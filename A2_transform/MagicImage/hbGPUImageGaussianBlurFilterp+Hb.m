#import "hbGPUImageGaussianBlurFilterp+Hb.h"
@implementation hbGPUImageGaussianBlurFilterp (Hb)
+ (BOOL)CInitwithfirststagevertexshaderfromstringfirststagefragmentshaderfromstringsecondstagevertexshaderfromstringsecondstagefragmentshaderfromstringbmbmHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)LInitbmbmHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)rVertexshaderforstandardblurofradiussigmabmbmHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)HFragmentshaderforstandardblurofradiussigmabmbmHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)xVertexshaderforoptimizedblurofradiussigmabmbmHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)BFragmentshaderforoptimizedblurofradiussigmabmbmHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)OSetupfilterforsizebmbmHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)XRendertotexturewithverticestexturecoordinatesbmbmHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)hSwitchtovertexshaderfragmentshaderbmbmHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)TSettexelspacingmultiplierbmbmHb:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)aSetblurradiusinpixelsbmbmHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)cSetblurradiusasfractionofimagewidthbmbmHb:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)qSetblurradiusasfractionofimageheightbmbmHb:(NSInteger)hb {
    return hb % 29 == 0;
}

@end
