#import "GPUImageTwoPassFilter.h"
@implementation GPUImageTwoPassFilter
#pragma mark -
#pragma mark Initialization and teardown
- (id)initWithFirstStageVertexShaderFromString:(NSString *)firstStageVertexShaderString firstStageFragmentShaderFromString:(NSString *)firstStageFragmentShaderString secondStageVertexShaderFromString:(NSString *)secondStageVertexShaderString secondStageFragmentShaderFromString:(NSString *)secondStageFragmentShaderString;
{
    if (!(self = [super initWithVertexShaderFromString:firstStageVertexShaderString fragmentShaderFromString:firstStageFragmentShaderString]))
    {
		return nil;
    }
    secondProgramUniformStateRestorationBlocks = [NSMutableDictionary dictionaryWithCapacity:10];
    runSynchronouslyOnVideoProcessingQueue(^{
        [GPUImageContext useImageProcessingContext];
        secondFilterProgram = [[GPUImageContext sharedImageProcessingContext] programForVertexShaderString:secondStageVertexShaderString fragmentShaderString:secondStageFragmentShaderString];
        if (!secondFilterProgram.initialized)
        {
            [self initializeSecondaryAttributes];
            if (![secondFilterProgram link])
            {
                NSString *progLog = [secondFilterProgram programLog];
                NSLog(@"Program link log: %@", progLog);
                NSString *fragLog = [secondFilterProgram fragmentShaderLog];
                NSLog(@"Fragment shader compile log: %@", fragLog);
                NSString *vertLog = [secondFilterProgram vertexShaderLog];
                NSLog(@"Vertex shader compile log: %@", vertLog);
                secondFilterProgram = nil;
                NSAssert(NO, @"Filter shader link failed");
            }
        }
        secondFilterPositionAttribute = [secondFilterProgram attributeIndex:@"position"];
        secondFilterTextureCoordinateAttribute = [secondFilterProgram attributeIndex:@"inputTextureCoordinate"];
        secondFilterInputTextureUniform = [secondFilterProgram uniformIndex:@"inputImageTexture"]; 
        secondFilterInputTextureUniform2 = [secondFilterProgram uniformIndex:@"inputImageTexture2"]; 
        [GPUImageContext setActiveShaderProgram:secondFilterProgram];
        glEnableVertexAttribArray(secondFilterPositionAttribute);
        glEnableVertexAttribArray(secondFilterTextureCoordinateAttribute);
    });
    return self;
}
- (id)initWithFirstStageFragmentShaderFromString:(NSString *)firstStageFragmentShaderString secondStageFragmentShaderFromString:(NSString *)secondStageFragmentShaderString;
{
    if (!(self = [self initWithFirstStageVertexShaderFromString:kGPUImageVertexShaderString firstStageFragmentShaderFromString:firstStageFragmentShaderString secondStageVertexShaderFromString:kGPUImageVertexShaderString secondStageFragmentShaderFromString:secondStageFragmentShaderString]))
    {
		return nil;
    }
    return self;
}
- (void)initializeSecondaryAttributes;
{
    [secondFilterProgram addAttribute:@"position"];
	[secondFilterProgram addAttribute:@"inputTextureCoordinate"];
}
#pragma mark -
#pragma mark Managing targets
- (GPUImageFramebuffer *)framebufferForOutput;
{
    return secondOutputFramebuffer;
}
- (void)removeOutputFramebuffer;
{
    secondOutputFramebuffer = nil;
}
#pragma mark -
#pragma mark Rendering
- (void)renderToTextureWithVertices:(const GLfloat *)vertices textureCoordinates:(const GLfloat *)textureCoordinates;
{
    if (self.preventRendering)
    {
        [firstInputFramebuffer unlock];
        return;
    }
    [GPUImageContext setActiveShaderProgram:filterProgram];
    outputFramebuffer = [[GPUImageContext sharedFramebufferCache] fetchFramebufferForSize:[self sizeOfFBO] textureOptions:self.outputTextureOptions onlyTexture:NO];
    [outputFramebuffer activateFramebuffer];
    [self setUniformsForProgramAtIndex:0];
    glClearColor(backgroundColorRed, backgroundColorGreen, backgroundColorBlue, backgroundColorAlpha);
    glClear(GL_COLOR_BUFFER_BIT);
	glActiveTexture(GL_TEXTURE2);
	glBindTexture(GL_TEXTURE_2D, [firstInputFramebuffer texture]);
	glUniform1i(filterInputTextureUniform, 2);
    glVertexAttribPointer(filterPositionAttribute, 2, GL_FLOAT, 0, 0, vertices);
	glVertexAttribPointer(filterTextureCoordinateAttribute, 2, GL_FLOAT, 0, 0, textureCoordinates);
    glDrawArrays(GL_TRIANGLE_STRIP, 0, 4);
    [firstInputFramebuffer unlock];
    firstInputFramebuffer = nil;
    secondOutputFramebuffer = [[GPUImageContext sharedFramebufferCache] fetchFramebufferForSize:[self sizeOfFBO] textureOptions:self.outputTextureOptions onlyTexture:NO];
    [secondOutputFramebuffer activateFramebuffer];
    [GPUImageContext setActiveShaderProgram:secondFilterProgram];
    if (usingNextFrameForImageCapture)
    {
        [secondOutputFramebuffer lock];
    }
    [self setUniformsForProgramAtIndex:1];
    glActiveTexture(GL_TEXTURE3);
    glBindTexture(GL_TEXTURE_2D, [outputFramebuffer texture]);
    glVertexAttribPointer(secondFilterTextureCoordinateAttribute, 2, GL_FLOAT, 0, 0, [[self class] textureCoordinatesForRotation:kGPUImageNoRotation]);
	glUniform1i(secondFilterInputTextureUniform, 3);
    glVertexAttribPointer(secondFilterPositionAttribute, 2, GL_FLOAT, 0, 0, vertices);
    glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
    glClear(GL_COLOR_BUFFER_BIT);
    glDrawArrays(GL_TRIANGLE_STRIP, 0, 4);
    [outputFramebuffer unlock];
    outputFramebuffer = nil;
    if (usingNextFrameForImageCapture)
    {
        dispatch_semaphore_signal(imageCaptureSemaphore);
    }
}
- (void)setAndExecuteUniformStateCallbackAtIndex:(GLint)uniform forProgram:(GLProgram *)shaderProgram toBlock:(dispatch_block_t)uniformStateBlock;
{
    if (shaderProgram == filterProgram)
    {
        [uniformStateRestorationBlocks setObject:[uniformStateBlock copy] forKey:[NSNumber numberWithInt:uniform]];
    }
    else
    {
        [secondProgramUniformStateRestorationBlocks setObject:[uniformStateBlock copy] forKey:[NSNumber numberWithInt:uniform]];
    }
    uniformStateBlock();
}
- (void)setUniformsForProgramAtIndex:(NSUInteger)programIndex;
{
    if (programIndex == 0)
    {
        [uniformStateRestorationBlocks enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop){
            dispatch_block_t currentBlock = obj;
            currentBlock();
        }];
    }
    else
    {
        [secondProgramUniformStateRestorationBlocks enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop){
            dispatch_block_t currentBlock = obj;
            currentBlock();
        }];
    }
}
@end
