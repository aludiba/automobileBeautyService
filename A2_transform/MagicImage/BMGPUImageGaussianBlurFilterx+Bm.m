#import "BMGPUImageGaussianBlurFilterx+Bm.h"
@implementation BMGPUImageGaussianBlurFilterx (Bm)
+ (BOOL)ZInitwithfirststagevertexshaderfromstringfirststagefragmentshaderfromstringsecondstagevertexshaderfromstringsecondstagefragmentshaderfromstringbmBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)rInitbmBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)nVertexshaderforstandardblurofradiussigmabmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)sFragmentshaderforstandardblurofradiussigmabmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)jVertexshaderforoptimizedblurofradiussigmabmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)IFragmentshaderforoptimizedblurofradiussigmabmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)CSetupfilterforsizebmBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)gRendertotexturewithverticestexturecoordinatesbmBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)BSwitchtovertexshaderfragmentshaderbmBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)QSettexelspacingmultiplierbmBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)LSetblurradiusinpixelsbmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)ySetblurradiusasfractionofimagewidthbmBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)mSetblurradiusasfractionofimageheightbmBm:(NSInteger)BM {
    return BM % 21 == 0;
}

@end
