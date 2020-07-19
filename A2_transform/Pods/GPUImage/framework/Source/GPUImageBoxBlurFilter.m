#import "GPUImageBoxBlurFilter.h"
@implementation GPUImageBoxBlurFilter
+ (NSString *)vertexShaderForOptimizedBlurOfRadius:(NSUInteger)blurRadius sigma:(CGFloat)sigma;
{
    if (blurRadius < 1)
    {
        return kGPUImageVertexShaderString;
    }
    NSUInteger numberOfOptimizedOffsets = MIN(blurRadius / 2 + (blurRadius % 2), 7);
    NSMutableString *shaderString = [[NSMutableString alloc] init];
    [shaderString appendFormat:@"\
     attribute vec4 position;\n\
     attribute vec4 inputTextureCoordinate;\n\
     \n\
     uniform float texelWidthOffset;\n\
     uniform float texelHeightOffset;\n\
     \n\
     varying vec2 blurCoordinates[%lu];\n\
     \n\
     void main()\n\
     {\n\
     gl_Position = position;\n\
     \n\
     vec2 singleStepOffset = vec2(texelWidthOffset, texelHeightOffset);\n", (unsigned long)(1 + (numberOfOptimizedOffsets * 2))];
    [shaderString appendString:@"blurCoordinates[0] = inputTextureCoordinate.xy;\n"];
    for (NSUInteger currentOptimizedOffset = 0; currentOptimizedOffset < numberOfOptimizedOffsets; currentOptimizedOffset++)
    {
        GLfloat optimizedOffset = (GLfloat)(currentOptimizedOffset * 2) + 1.5;
        [shaderString appendFormat:@"\
         blurCoordinates[%lu] = inputTextureCoordinate.xy + singleStepOffset * %f;\n\
         blurCoordinates[%lu] = inputTextureCoordinate.xy - singleStepOffset * %f;\n", (unsigned long)((currentOptimizedOffset * 2) + 1), optimizedOffset, (unsigned long)((currentOptimizedOffset * 2) + 2), optimizedOffset];
    }
    [shaderString appendString:@"}\n"];
    return shaderString;
}
+ (NSString *)fragmentShaderForOptimizedBlurOfRadius:(NSUInteger)blurRadius sigma:(CGFloat)sigma;
{
    if (blurRadius < 1)
    {
        return kGPUImagePassthroughFragmentShaderString;
    }
    NSUInteger numberOfOptimizedOffsets = MIN(blurRadius / 2 + (blurRadius % 2), 7);
    NSUInteger trueNumberOfOptimizedOffsets = blurRadius / 2 + (blurRadius % 2);
    NSMutableString *shaderString = [[NSMutableString alloc] init];
#if TARGET_IPHONE_SIMULATOR || TARGET_OS_IPHONE
    [shaderString appendFormat:@"\
     uniform sampler2D inputImageTexture;\n\
     uniform highp float texelWidthOffset;\n\
     uniform highp float texelHeightOffset;\n\
     \n\
     varying highp vec2 blurCoordinates[%lu];\n\
     \n\
     void main()\n\
     {\n\
     lowp vec4 sum = vec4(0.0);\n", (unsigned long)(1 + (numberOfOptimizedOffsets * 2)) ];
#else
    [shaderString appendFormat:@"\
     uniform sampler2D inputImageTexture;\n\
     uniform float texelWidthOffset;\n\
     uniform float texelHeightOffset;\n\
     \n\
     varying vec2 blurCoordinates[%lu];\n\
     \n\
     void main()\n\
     {\n\
     vec4 sum = vec4(0.0);\n", 1 + (numberOfOptimizedOffsets * 2) ];
#endif
    GLfloat boxWeight = 1.0 / (GLfloat)((blurRadius * 2) + 1);
    [shaderString appendFormat:@"sum += texture2D(inputImageTexture, blurCoordinates[0]) * %f;\n", boxWeight];
    for (NSUInteger currentBlurCoordinateIndex = 0; currentBlurCoordinateIndex < numberOfOptimizedOffsets; currentBlurCoordinateIndex++)
    {
        [shaderString appendFormat:@"sum += texture2D(inputImageTexture, blurCoordinates[%lu]) * %f;\n", (unsigned long)((currentBlurCoordinateIndex * 2) + 1), boxWeight * 2.0];
        [shaderString appendFormat:@"sum += texture2D(inputImageTexture, blurCoordinates[%lu]) * %f;\n", (unsigned long)((currentBlurCoordinateIndex * 2) + 2), boxWeight * 2.0];
    }
    if (trueNumberOfOptimizedOffsets > numberOfOptimizedOffsets)
    {
#if TARGET_IPHONE_SIMULATOR || TARGET_OS_IPHONE
        [shaderString appendString:@"highp vec2 singleStepOffset = vec2(texelWidthOffset, texelHeightOffset);\n"];
#else
        [shaderString appendString:@"vec2 singleStepOffset = vec2(texelWidthOffset, texelHeightOffset);\n"];
#endif
        for (NSUInteger currentOverlowTextureRead = numberOfOptimizedOffsets; currentOverlowTextureRead < trueNumberOfOptimizedOffsets; currentOverlowTextureRead++)
        {
            GLfloat optimizedOffset = (GLfloat)(currentOverlowTextureRead * 2) + 1.5;
            [shaderString appendFormat:@"sum += texture2D(inputImageTexture, blurCoordinates[0] + singleStepOffset * %f) * %f;\n", optimizedOffset, boxWeight * 2.0];
            [shaderString appendFormat:@"sum += texture2D(inputImageTexture, blurCoordinates[0] - singleStepOffset * %f) * %f;\n", optimizedOffset, boxWeight * 2.0];
        }
    }
    [shaderString appendString:@"\
     gl_FragColor = sum;\n\
     }\n"];
    return shaderString;
}
- (void)setupFilterForSize:(CGSize)filterFrameSize;
{
    [super setupFilterForSize:filterFrameSize];
    if (shouldResizeBlurRadiusWithImageSize == YES)
    {
    }
}
#pragma mark -
#pragma mark Initialization and teardown
- (id)init;
{
    NSString *currentBoxBlurVertexShader = [[self class] vertexShaderForOptimizedBlurOfRadius:4 sigma:0.0];
    NSString *currentBoxBlurFragmentShader = [[self class] fragmentShaderForOptimizedBlurOfRadius:4 sigma:0.0];
    if (!(self = [super initWithFirstStageVertexShaderFromString:currentBoxBlurVertexShader firstStageFragmentShaderFromString:currentBoxBlurFragmentShader secondStageVertexShaderFromString:currentBoxBlurVertexShader secondStageFragmentShaderFromString:currentBoxBlurFragmentShader]))
    {
        return nil;
    }
    _blurRadiusInPixels = 4.0;
    return self;
}
#pragma mark -
#pragma mark Accessors
- (void)setBlurRadiusInPixels:(CGFloat)newValue;
{
    CGFloat newBlurRadius = round(round(newValue / 2.0) * 2.0); 
    if (newBlurRadius != _blurRadiusInPixels)
    {
        _blurRadiusInPixels = newBlurRadius;
        NSString *newGaussianBlurVertexShader = [[self class] vertexShaderForOptimizedBlurOfRadius:_blurRadiusInPixels sigma:0.0];
        NSString *newGaussianBlurFragmentShader = [[self class] fragmentShaderForOptimizedBlurOfRadius:_blurRadiusInPixels sigma:0.0];
        [self switchToVertexShader:newGaussianBlurVertexShader fragmentShader:newGaussianBlurFragmentShader];
    }
    shouldResizeBlurRadiusWithImageSize = NO;
}
@end
