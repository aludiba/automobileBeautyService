#import <Foundation/Foundation.h>
@interface BMGPUImageGaussianBlurFilterx: NSObject
+ (BOOL)ZInitwithfirststagevertexshaderfromstringfirststagefragmentshaderfromstringsecondstagevertexshaderfromstringsecondstagefragmentshaderfromstringbm:(NSInteger)BM;
+ (BOOL)rInitbm:(NSInteger)BM;
+ (BOOL)nVertexshaderforstandardblurofradiussigmabm:(NSInteger)BM;
+ (BOOL)sFragmentshaderforstandardblurofradiussigmabm:(NSInteger)BM;
+ (BOOL)jVertexshaderforoptimizedblurofradiussigmabm:(NSInteger)BM;
+ (BOOL)IFragmentshaderforoptimizedblurofradiussigmabm:(NSInteger)BM;
+ (BOOL)CSetupfilterforsizebm:(NSInteger)BM;
+ (BOOL)gRendertotexturewithverticestexturecoordinatesbm:(NSInteger)BM;
+ (BOOL)BSwitchtovertexshaderfragmentshaderbm:(NSInteger)BM;
+ (BOOL)QSettexelspacingmultiplierbm:(NSInteger)BM;
+ (BOOL)LSetblurradiusinpixelsbm:(NSInteger)BM;
+ (BOOL)ySetblurradiusasfractionofimagewidthbm:(NSInteger)BM;
+ (BOOL)mSetblurradiusasfractionofimageheightbm:(NSInteger)BM;

@end
