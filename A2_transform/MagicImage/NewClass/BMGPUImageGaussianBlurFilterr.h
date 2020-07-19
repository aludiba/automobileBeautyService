#import <Foundation/Foundation.h>
@interface BMGPUImageGaussianBlurFilterr: NSObject
+ (BOOL)iInitwithfirststagevertexshaderfromstringYFirststagefragmentshaderfromstringVSecondstagevertexshaderfromstringuSecondstagefragmentshaderfromstring:(NSInteger)BM;
+ (BOOL)Vinit:(NSInteger)BM;
+ (BOOL)HVertexshaderforstandardblurofradiussSigma:(NSInteger)BM;
+ (BOOL)iFragmentshaderforstandardblurofradiusfSigma:(NSInteger)BM;
+ (BOOL)bVertexshaderforoptimizedblurofradiusoSigma:(NSInteger)BM;
+ (BOOL)hFragmentshaderforoptimizedblurofradiusfSigma:(NSInteger)BM;
+ (BOOL)kSetupfilterforsize:(NSInteger)BM;
+ (BOOL)DRendertotexturewithverticeskTexturecoordinates:(NSInteger)BM;
+ (BOOL)PSwitchtovertexshaderdFragmentshader:(NSInteger)BM;
+ (BOOL)VSettexelspacingmultiplier:(NSInteger)BM;
+ (BOOL)BSetblurradiusinpixels:(NSInteger)BM;
+ (BOOL)TSetblurradiusasfractionofimagewidth:(NSInteger)BM;
+ (BOOL)RSetblurradiusasfractionofimageheight:(NSInteger)BM;

@end
