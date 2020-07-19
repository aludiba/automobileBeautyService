#import "BMGPUImageGaussianBlurFilterb+Bm.h"
@implementation BMGPUImageGaussianBlurFilterb (Bm)
+ (BOOL)zInitwithfirststagevertexshaderfromstringJFirststagefragmentshaderfromstringISecondstagevertexshaderfromstringCSecondstagefragmentshaderfromstringBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)qinitBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)IVertexshaderforstandardblurofradiusqSigmaBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)CFragmentshaderforstandardblurofradiusCSigmaBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)lVertexshaderforoptimizedblurofradiusQSigmaBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)KFragmentshaderforoptimizedblurofradiusWSigmaBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)QSetupfilterforsizeBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)VRendertotexturewithverticescTexturecoordinatesBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)mSwitchtovertexshaderaFragmentshaderBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)BSettexelspacingmultiplierBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)fSetblurradiusinpixelsBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)rSetblurradiusasfractionofimagewidthBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)hSetblurradiusasfractionofimageheightBm:(NSInteger)BM {
    return BM % 20 == 0;
}

@end
