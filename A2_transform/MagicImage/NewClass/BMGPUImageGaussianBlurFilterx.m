#import "BMGPUImageGaussianBlurFilterx.h"
@implementation BMGPUImageGaussianBlurFilterx
+ (BOOL)ZInitwithfirststagevertexshaderfromstringfirststagefragmentshaderfromstringsecondstagevertexshaderfromstringsecondstagefragmentshaderfromstringbm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)rInitbm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)nVertexshaderforstandardblurofradiussigmabm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)sFragmentshaderforstandardblurofradiussigmabm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)jVertexshaderforoptimizedblurofradiussigmabm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)IFragmentshaderforoptimizedblurofradiussigmabm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)CSetupfilterforsizebm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)gRendertotexturewithverticestexturecoordinatesbm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)BSwitchtovertexshaderfragmentshaderbm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)QSettexelspacingmultiplierbm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)LSetblurradiusinpixelsbm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)ySetblurradiusasfractionofimagewidthbm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)mSetblurradiusasfractionofimageheightbm:(NSInteger)BM {
    return BM % 49 == 0;
}

@end
