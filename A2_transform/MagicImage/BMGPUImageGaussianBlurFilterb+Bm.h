#import <Foundation/Foundation.h>
#import "BMGPUImageGaussianBlurFilterb.h"

@interface BMGPUImageGaussianBlurFilterb (Bm)
+ (BOOL)zInitwithfirststagevertexshaderfromstringJFirststagefragmentshaderfromstringISecondstagevertexshaderfromstringCSecondstagefragmentshaderfromstringBm:(NSInteger)BM;
+ (BOOL)qinitBm:(NSInteger)BM;
+ (BOOL)IVertexshaderforstandardblurofradiusqSigmaBm:(NSInteger)BM;
+ (BOOL)CFragmentshaderforstandardblurofradiusCSigmaBm:(NSInteger)BM;
+ (BOOL)lVertexshaderforoptimizedblurofradiusQSigmaBm:(NSInteger)BM;
+ (BOOL)KFragmentshaderforoptimizedblurofradiusWSigmaBm:(NSInteger)BM;
+ (BOOL)QSetupfilterforsizeBm:(NSInteger)BM;
+ (BOOL)VRendertotexturewithverticescTexturecoordinatesBm:(NSInteger)BM;
+ (BOOL)mSwitchtovertexshaderaFragmentshaderBm:(NSInteger)BM;
+ (BOOL)BSettexelspacingmultiplierBm:(NSInteger)BM;
+ (BOOL)fSetblurradiusinpixelsBm:(NSInteger)BM;
+ (BOOL)rSetblurradiusasfractionofimagewidthBm:(NSInteger)BM;
+ (BOOL)hSetblurradiusasfractionofimageheightBm:(NSInteger)BM;

@end
