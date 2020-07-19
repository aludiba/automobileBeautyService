#import "hbGPUImageGaussianBlurFilterV.h"
@implementation hbGPUImageGaussianBlurFilterV
+ (BOOL)UInitwithfirststagevertexshaderfromstringfirststagefragmentshaderfromstringsecondstagevertexshaderfromstringsecondstagefragmentshaderfromstringbmbm:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)cInitbmbm:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)SVertexshaderforstandardblurofradiussigmabmbm:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)JFragmentshaderforstandardblurofradiussigmabmbm:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)uVertexshaderforoptimizedblurofradiussigmabmbm:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)xFragmentshaderforoptimizedblurofradiussigmabmbm:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)vSetupfilterforsizebmbm:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)fRendertotexturewithverticestexturecoordinatesbmbm:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)BSwitchtovertexshaderfragmentshaderbmbm:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)JSettexelspacingmultiplierbmbm:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)jSetblurradiusinpixelsbmbm:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)DSetblurradiusasfractionofimagewidthbmbm:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)VSetblurradiusasfractionofimageheightbmbm:(NSInteger)hb {
    return hb % 44 == 0;
}

@end
