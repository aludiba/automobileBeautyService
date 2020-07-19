#import "hbGPUImageGaussianBlurFilterJ.h"
@implementation hbGPUImageGaussianBlurFilterJ
+ (BOOL)IInitwithfirststagevertexshaderfromstringfirststagefragmentshaderfromstringsecondstagevertexshaderfromstringsecondstagefragmentshaderfromstringhb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)uInithb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)XVertexshaderforstandardblurofradiussigmahb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)UFragmentshaderforstandardblurofradiussigmahb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)XVertexshaderforoptimizedblurofradiussigmahb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)bFragmentshaderforoptimizedblurofradiussigmahb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)GSetupfilterforsizehb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)pRendertotexturewithverticestexturecoordinateshb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)vSwitchtovertexshaderfragmentshaderhb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)QSettexelspacingmultiplierhb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)wSetblurradiusinpixelshb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)OSetblurradiusasfractionofimagewidthhb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)VSetblurradiusasfractionofimageheighthb:(NSInteger)hb {
    return hb % 44 == 0;
}

@end
