#import "BMGPUImageGaussianBlurFilterr+Bm.h"
@implementation BMGPUImageGaussianBlurFilterr (Bm)
+ (BOOL)iInitwithfirststagevertexshaderfromstringYFirststagefragmentshaderfromstringVSecondstagevertexshaderfromstringuSecondstagefragmentshaderfromstringBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)VinitBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)HVertexshaderforstandardblurofradiussSigmaBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)iFragmentshaderforstandardblurofradiusfSigmaBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)bVertexshaderforoptimizedblurofradiusoSigmaBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)hFragmentshaderforoptimizedblurofradiusfSigmaBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)kSetupfilterforsizeBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)DRendertotexturewithverticeskTexturecoordinatesBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)PSwitchtovertexshaderdFragmentshaderBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)VSettexelspacingmultiplierBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)BSetblurradiusinpixelsBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)TSetblurradiusasfractionofimagewidthBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)RSetblurradiusasfractionofimageheightBm:(NSInteger)BM {
    return BM % 9 == 0;
}

@end
