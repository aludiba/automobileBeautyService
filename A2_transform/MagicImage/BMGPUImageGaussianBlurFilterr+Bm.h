#import <Foundation/Foundation.h>
#import "BMGPUImageGaussianBlurFilterr.h"

@interface BMGPUImageGaussianBlurFilterr (Bm)
+ (BOOL)iInitwithfirststagevertexshaderfromstringYFirststagefragmentshaderfromstringVSecondstagevertexshaderfromstringuSecondstagefragmentshaderfromstringBm:(NSInteger)BM;
+ (BOOL)VinitBm:(NSInteger)BM;
+ (BOOL)HVertexshaderforstandardblurofradiussSigmaBm:(NSInteger)BM;
+ (BOOL)iFragmentshaderforstandardblurofradiusfSigmaBm:(NSInteger)BM;
+ (BOOL)bVertexshaderforoptimizedblurofradiusoSigmaBm:(NSInteger)BM;
+ (BOOL)hFragmentshaderforoptimizedblurofradiusfSigmaBm:(NSInteger)BM;
+ (BOOL)kSetupfilterforsizeBm:(NSInteger)BM;
+ (BOOL)DRendertotexturewithverticeskTexturecoordinatesBm:(NSInteger)BM;
+ (BOOL)PSwitchtovertexshaderdFragmentshaderBm:(NSInteger)BM;
+ (BOOL)VSettexelspacingmultiplierBm:(NSInteger)BM;
+ (BOOL)BSetblurradiusinpixelsBm:(NSInteger)BM;
+ (BOOL)TSetblurradiusasfractionofimagewidthBm:(NSInteger)BM;
+ (BOOL)RSetblurradiusasfractionofimageheightBm:(NSInteger)BM;

@end
