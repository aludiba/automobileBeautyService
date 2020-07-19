#import <Foundation/Foundation.h>
@interface hbGPUImageGaussianBlurFilterq: NSObject
+ (BOOL)tInitwithfirststagevertexshaderfromstringdFirststagefragmentshaderfromstringcSecondstagevertexshaderfromstringuSecondstagefragmentshaderfromstring:(NSInteger)hb;
+ (BOOL)Iinit:(NSInteger)hb;
+ (BOOL)GVertexshaderforstandardblurofradiusvSigma:(NSInteger)hb;
+ (BOOL)cFragmentshaderforstandardblurofradiusBSigma:(NSInteger)hb;
+ (BOOL)HVertexshaderforoptimizedblurofradiusDSigma:(NSInteger)hb;
+ (BOOL)TFragmentshaderforoptimizedblurofradiusuSigma:(NSInteger)hb;
+ (BOOL)DSetupfilterforsize:(NSInteger)hb;
+ (BOOL)nRendertotexturewithverticesMTexturecoordinates:(NSInteger)hb;
+ (BOOL)PSwitchtovertexshaderVFragmentshader:(NSInteger)hb;
+ (BOOL)PSettexelspacingmultiplier:(NSInteger)hb;
+ (BOOL)eSetblurradiusinpixels:(NSInteger)hb;
+ (BOOL)RSetblurradiusasfractionofimagewidth:(NSInteger)hb;
+ (BOOL)NSetblurradiusasfractionofimageheight:(NSInteger)hb;

@end
