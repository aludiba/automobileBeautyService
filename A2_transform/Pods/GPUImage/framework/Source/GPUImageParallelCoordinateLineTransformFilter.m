#import "GPUImageParallelCoordinateLineTransformFilter.h"
NSString *const kGPUImageHoughAccumulationVertexShaderString = SHADER_STRING
(
 attribute vec4 position;
 void main()
 {
     gl_Position = position;
 }
);
#if TARGET_IPHONE_SIMULATOR || TARGET_OS_IPHONE
NSString *const kGPUImageHoughAccumulationFragmentShaderString = SHADER_STRING
(
 const lowp float scalingFactor = 1.0 / 256.0;
 void main()
 {
     gl_FragColor = vec4(0.004, 0.004, 0.004, 1.0);
 }
);
NSString *const kGPUImageHoughAccumulationFBOReadFragmentShaderString = SHADER_STRING
(
 const lowp float scalingFactor = 0.004;
 void main()
 {
     mediump vec4 fragmentData = gl_LastFragData[0];
     fragmentData.r = fragmentData.r + scalingFactor;
     fragmentData.g = scalingFactor * floor(fragmentData.r) + fragmentData.g;
     fragmentData.b = scalingFactor * floor(fragmentData.g) + fragmentData.b;
     fragmentData.a = scalingFactor * floor(fragmentData.b) + fragmentData.a;
     fragmentData = fract(fragmentData);
     gl_FragColor = vec4(fragmentData.rgb, 1.0);
 }
);
#else
NSString *const kGPUImageHoughAccumulationFragmentShaderString = SHADER_STRING
(
 const float scalingFactor = 1.0 / 256.0;
 void main()
 {
     gl_FragColor = vec4(0.004, 0.004, 0.004, 1.0);
 }
);
NSString *const kGPUImageHoughAccumulationFBOReadFragmentShaderString = SHADER_STRING
(
 const float scalingFactor = 1.0 / 256.0;
 void main()
 {
     gl_FragColor = vec4(0.004, 0.004, 0.004, 1.0);
 }
);
#endif
@interface GPUImageParallelCoordinateLineTransformFilter()
- (void)generateLineCoordinates;
@end
@implementation GPUImageParallelCoordinateLineTransformFilter
#pragma mark -
#pragma mark Initialization and teardown
- (id)init;
{
    NSString *fragmentShaderToUse = nil;
    if ([GPUImageContext deviceSupportsFramebufferReads])
    {
        fragmentShaderToUse = [NSString stringWithFormat:@"#extension GL_EXT_shader_framebuffer_fetch : require\n %@",kGPUImageHoughAccumulationFBOReadFragmentShaderString];
    }
    else
    {
        fragmentShaderToUse = kGPUImageHoughAccumulationFragmentShaderString;
    }
    if (!(self = [super initWithVertexShaderFromString:kGPUImageHoughAccumulationVertexShaderString fragmentShaderFromString:fragmentShaderToUse]))
    {
        return nil;
    }
    return self;
}
- (void)dealloc;
{
    free(rawImagePixels);
    free(lineCoordinates);
}
- (void)initializeAttributes;
{
    [filterProgram addAttribute:@"position"];
}
#pragma mark -
#pragma mark Rendering
#define MAXLINESCALINGFACTOR 4
- (void)generateLineCoordinates;
{
    unsigned int imageByteSize = inputTextureSize.width * inputTextureSize.height * 4;
    rawImagePixels = (GLubyte *)malloc(imageByteSize);
    maxLinePairsToRender = (inputTextureSize.width * inputTextureSize.height) / MAXLINESCALINGFACTOR;
    lineCoordinates = calloc(maxLinePairsToRender * 8, sizeof(GLfloat));
}
- (void)newFrameReadyAtTime:(CMTime)frameTime atIndex:(NSInteger)textureIndex;
{
    if (lineCoordinates == NULL)
    {
        [self generateLineCoordinates];
    }
    [self renderToTextureWithVertices:NULL textureCoordinates:NULL];
    [self informTargetsAboutNewFrameAtTime:frameTime];
}
- (void)renderToTextureWithVertices:(const GLfloat *)vertices textureCoordinates:(const GLfloat *)textureCoordinates;
{
    NSAssert(self.outputTextureOptions.internalFormat == GL_RGBA, @"The output texture format for this filter must be GL_RGBA.");
    NSAssert(self.outputTextureOptions.type == GL_UNSIGNED_BYTE, @"The type of the output texture of this filter must be GL_UNSIGNED_BYTE.");
    if (self.preventRendering)
    {
        [firstInputFramebuffer unlock];
        return;
    }
    [GPUImageContext useImageProcessingContext];
    [firstInputFramebuffer activateFramebuffer];
    glFinish();
    glReadPixels(0, 0, inputTextureSize.width, inputTextureSize.height, GL_RGBA, GL_UNSIGNED_BYTE, rawImagePixels);
    CGFloat xAspectMultiplier = 1.0, yAspectMultiplier = 1.0;
    unsigned int imageByteSize = inputTextureSize.width * inputTextureSize.height * 4;
    unsigned int imageWidth = inputTextureSize.width * 4;
    linePairsToRender = 0;
    unsigned int currentByte = 0;
    unsigned int lineStorageIndex = 0;
    unsigned int maxLineStorageIndex = maxLinePairsToRender * 8 - 8;
    GLfloat minY = 100, maxY = -100, minX = 100, maxX = -100;
    while (currentByte < imageByteSize)
    {
        GLubyte colorByte = rawImagePixels[currentByte];        
        if (colorByte > 0)
        {
            unsigned int xCoordinate = currentByte % imageWidth;
            unsigned int yCoordinate = currentByte / imageWidth;
            CGFloat normalizedXCoordinate = (-1.0 + 2.0 * (CGFloat)(xCoordinate / 4) / inputTextureSize.width) * xAspectMultiplier;
            CGFloat normalizedYCoordinate = (-1.0 + 2.0 * (CGFloat)(yCoordinate) / inputTextureSize.height) * yAspectMultiplier;
            minY = MIN(minY, normalizedYCoordinate);
            maxY = MAX(maxY, normalizedYCoordinate);
            minX = MIN(minX, normalizedXCoordinate);
            maxX = MAX(maxX, normalizedXCoordinate);
            lineCoordinates[lineStorageIndex++] = -1.0;
            lineCoordinates[lineStorageIndex++] = -normalizedYCoordinate;
            lineCoordinates[lineStorageIndex++] = 0.0;
            lineCoordinates[lineStorageIndex++] = normalizedXCoordinate;
            lineCoordinates[lineStorageIndex++] = 0.0;
            lineCoordinates[lineStorageIndex++] = normalizedXCoordinate;
            lineCoordinates[lineStorageIndex++] = 1.0;
            lineCoordinates[lineStorageIndex++] = normalizedYCoordinate;
            linePairsToRender++;
            linePairsToRender = MIN(linePairsToRender, maxLinePairsToRender);
            lineStorageIndex = MIN(lineStorageIndex, maxLineStorageIndex);
        }
        currentByte +=8;
    }
    outputFramebuffer = [[GPUImageContext sharedFramebufferCache] fetchFramebufferForSize:[self sizeOfFBO] textureOptions:self.outputTextureOptions onlyTexture:NO];
    [outputFramebuffer activateFramebuffer];
    if (usingNextFrameForImageCapture)
    {
        [outputFramebuffer lock];
    }
    [GPUImageContext setActiveShaderProgram:filterProgram];
    [self setUniformsForProgramAtIndex:0];
    glClearColor(0.0, 0.0, 0.0, 1.0);
    glClear(GL_COLOR_BUFFER_BIT);
    if (![GPUImageContext deviceSupportsFramebufferReads])
    {
        glBlendEquation(GL_FUNC_ADD);
        glBlendFunc(GL_ONE, GL_ONE);
        glEnable(GL_BLEND);
    }
    else
    {
    }
    glLineWidth(1);
	glVertexAttribPointer(filterPositionAttribute, 2, GL_FLOAT, 0, 0, lineCoordinates);
    glDrawArrays(GL_LINES, 0, (linePairsToRender * 4));
    if (![GPUImageContext deviceSupportsFramebufferReads])
    {
        glDisable(GL_BLEND);
    }
    [firstInputFramebuffer unlock];
    if (usingNextFrameForImageCapture)
    {
        dispatch_semaphore_signal(imageCaptureSemaphore);
    }
}
@end
