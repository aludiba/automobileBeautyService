#import "GPUImageGrayscaleFilter.h"
@implementation GPUImageGrayscaleFilter
#if TARGET_IPHONE_SIMULATOR || TARGET_OS_IPHONE
NSString *const kGPUImageLuminanceFragmentShaderString = SHADER_STRING
(
 precision highp float;
 varying vec2 textureCoordinate;
 uniform sampler2D inputImageTexture;
 const highp vec3 W = vec3(0.2125, 0.7154, 0.0721);
 void main()
 {
     lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);
     float luminance = dot(textureColor.rgb, W);
     gl_FragColor = vec4(vec3(luminance), textureColor.a);
 }
);
#else
NSString *const kGPUImageLuminanceFragmentShaderString = SHADER_STRING
(
 varying vec2 textureCoordinate;
 uniform sampler2D inputImageTexture;
 const vec3 W = vec3(0.2125, 0.7154, 0.0721);
 void main()
 {
     vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);
     float luminance = dot(textureColor.rgb, W);
     gl_FragColor = vec4(vec3(luminance), textureColor.a);
 }
);
#endif
- (void)renderToTextureWithVertices:(const GLfloat *)vertices textureCoordinates:(const GLfloat *)textureCoordinates;
{
    if (!currentlyReceivingMonochromeInput)
    {
        [super renderToTextureWithVertices:vertices textureCoordinates:textureCoordinates];
    }
}
- (BOOL)wantsMonochromeInput;
{
    return NO;
}
- (BOOL)providesMonochromeOutput;
{
    return NO;
}
#pragma mark -
#pragma mark Initialization and teardown
- (id)init;
{
    if (!(self = [super initWithFragmentShaderFromString:kGPUImageLuminanceFragmentShaderString]))
    {
		return nil;
    }
    return self;
}
@end
