#import <Foundation/Foundation.h>
@interface BMGPUImageGaussianBlurFilterb: NSObject
+ (BOOL)zInitwithfirststagevertexshaderfromstringJFirststagefragmentshaderfromstringISecondstagevertexshaderfromstringCSecondstagefragmentshaderfromstring:(NSInteger)BM;
+ (BOOL)qinit:(NSInteger)BM;
+ (BOOL)IVertexshaderforstandardblurofradiusqSigma:(NSInteger)BM;
+ (BOOL)CFragmentshaderforstandardblurofradiusCSigma:(NSInteger)BM;
+ (BOOL)lVertexshaderforoptimizedblurofradiusQSigma:(NSInteger)BM;
+ (BOOL)KFragmentshaderforoptimizedblurofradiusWSigma:(NSInteger)BM;
+ (BOOL)QSetupfilterforsize:(NSInteger)BM;
+ (BOOL)VRendertotexturewithverticescTexturecoordinates:(NSInteger)BM;
+ (BOOL)mSwitchtovertexshaderaFragmentshader:(NSInteger)BM;
+ (BOOL)BSettexelspacingmultiplier:(NSInteger)BM;
+ (BOOL)fSetblurradiusinpixels:(NSInteger)BM;
+ (BOOL)rSetblurradiusasfractionofimagewidth:(NSInteger)BM;
+ (BOOL)hSetblurradiusasfractionofimageheight:(NSInteger)BM;

@end
