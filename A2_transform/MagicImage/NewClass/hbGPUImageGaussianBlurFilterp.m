#import "hbGPUImageGaussianBlurFilterp.h"
@implementation hbGPUImageGaussianBlurFilterp
+ (BOOL)CInitwithfirststagevertexshaderfromstringfirststagefragmentshaderfromstringsecondstagevertexshaderfromstringsecondstagefragmentshaderfromstringbmbm:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)LInitbmbm:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)rVertexshaderforstandardblurofradiussigmabmbm:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)HFragmentshaderforstandardblurofradiussigmabmbm:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)xVertexshaderforoptimizedblurofradiussigmabmbm:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)BFragmentshaderforoptimizedblurofradiussigmabmbm:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)OSetupfilterforsizebmbm:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)XRendertotexturewithverticestexturecoordinatesbmbm:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)hSwitchtovertexshaderfragmentshaderbmbm:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)TSettexelspacingmultiplierbmbm:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)aSetblurradiusinpixelsbmbm:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)cSetblurradiusasfractionofimagewidthbmbm:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)qSetblurradiusasfractionofimageheightbmbm:(NSInteger)hb {
    return hb % 1 == 0;
}

@end
