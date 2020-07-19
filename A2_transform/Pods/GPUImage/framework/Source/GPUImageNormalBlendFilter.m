#import "GPUImageNormalBlendFilter.h"
#if TARGET_IPHONE_SIMULATOR || TARGET_OS_IPHONE
NSString *const kGPUImageNormalBlendFragmentShaderString = SHADER_STRING
(
 varying highp vec2 textureCoordinate;
 varying highp vec2 textureCoordinate2;
 uniform sampler2D inputImageTexture;
 uniform sampler2D inputImageTexture2;
 void main()
 {
     lowp vec4 c2 = texture2D(inputImageTexture, textureCoordinate);
	 lowp vec4 c1 = texture2D(inputImageTexture2, textureCoordinate2);
     lowp vec4 outputColor;
     lowp float a = c1.a + c2.a * (1.0 - c1.a);
     lowp float alphaDivisor = a + step(a, 0.0); 
     outputColor.r = (c1.r * c1.a + c2.r * c2.a * (1.0 - c1.a))/alphaDivisor;
     outputColor.g = (c1.g * c1.a + c2.g * c2.a * (1.0 - c1.a))/alphaDivisor;
     outputColor.b = (c1.b * c1.a + c2.b * c2.a * (1.0 - c1.a))/alphaDivisor;
     outputColor.a = a;
     gl_FragColor = outputColor;
 }
);
#else
NSString *const kGPUImageNormalBlendFragmentShaderString = SHADER_STRING
(
 varying vec2 textureCoordinate;
 varying vec2 textureCoordinate2;
 uniform sampler2D inputImageTexture;
 uniform sampler2D inputImageTexture2;
 void main()
 {
     vec4 c2 = texture2D(inputImageTexture, textureCoordinate);
	 vec4 c1 = texture2D(inputImageTexture2, textureCoordinate2);
     vec4 outputColor;
     float a = c1.a + c2.a * (1.0 - c1.a);
     float alphaDivisor = a + step(a, 0.0); 
     outputColor.r = (c1.r * c1.a + c2.r * c2.a * (1.0 - c1.a))/alphaDivisor;
     outputColor.g = (c1.g * c1.a + c2.g * c2.a * (1.0 - c1.a))/alphaDivisor;
     outputColor.b = (c1.b * c1.a + c2.b * c2.a * (1.0 - c1.a))/alphaDivisor;
     outputColor.a = a;
     gl_FragColor = outputColor;
 }
);
#endif
@implementation GPUImageNormalBlendFilter
- (id)init;
{
    if (!(self = [super initWithFragmentShaderFromString:kGPUImageNormalBlendFragmentShaderString]))
    {
		return nil;
    }
    return self;
}
@end