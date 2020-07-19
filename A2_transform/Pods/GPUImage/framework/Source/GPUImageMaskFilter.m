#import "GPUImageMaskFilter.h"
#if TARGET_IPHONE_SIMULATOR || TARGET_OS_IPHONE
NSString *const kGPUImageMaskShaderString = SHADER_STRING
(
 varying highp vec2 textureCoordinate;
 varying highp vec2 textureCoordinate2;
 uniform sampler2D inputImageTexture;
 uniform sampler2D inputImageTexture2;
 void main()
 {
	 lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);
	 lowp vec4 textureColor2 = texture2D(inputImageTexture2, textureCoordinate2);
	 lowp float newAlpha = dot(textureColor2.rgb, vec3(.33333334, .33333334, .33333334)) * textureColor2.a;
	 gl_FragColor = vec4(textureColor.xyz, newAlpha);
 }
);
#else
NSString *const kGPUImageMaskShaderString = SHADER_STRING
(
 varying vec2 textureCoordinate;
 varying vec2 textureCoordinate2;
 uniform sampler2D inputImageTexture;
 uniform sampler2D inputImageTexture2;
 void main()
 {
	 vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);
	 vec4 textureColor2 = texture2D(inputImageTexture2, textureCoordinate2);
	 float newAlpha = dot(textureColor2.rgb, vec3(.33333334, .33333334, .33333334)) * textureColor2.a;
	 gl_FragColor = vec4(textureColor.xyz, newAlpha);
 }
);
#endif
@implementation GPUImageMaskFilter
- (id)init;
{
    if (!(self = [super initWithFragmentShaderFromString:kGPUImageMaskShaderString]))
    {
		return nil;
    }
    return self;
}
- (void)renderToTextureWithVertices:(const GLfloat *)vertices textureCoordinates:(const GLfloat *)textureCoordinates;
{
    glEnable(GL_BLEND);
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
    [super renderToTextureWithVertices:vertices textureCoordinates:textureCoordinates];
    glDisable(GL_BLEND);
}
@end
