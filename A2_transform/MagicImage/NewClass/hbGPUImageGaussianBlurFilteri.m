#import "hbGPUImageGaussianBlurFilteri.h"
@implementation hbGPUImageGaussianBlurFilteri
+ (BOOL)uInitwithfirststagevertexshaderfromstringfirststagefragmentshaderfromstringsecondstagevertexshaderfromstringsecondstagefragmentshaderfromstringhb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)NInithb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)kVertexshaderforstandardblurofradiussigmahb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)uFragmentshaderforstandardblurofradiussigmahb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)uVertexshaderforoptimizedblurofradiussigmahb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)dFragmentshaderforoptimizedblurofradiussigmahb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)zSetupfilterforsizehb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)ORendertotexturewithverticestexturecoordinateshb:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)PSwitchtovertexshaderfragmentshaderhb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)bSettexelspacingmultiplierhb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)kSetblurradiusinpixelshb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)NSetblurradiusasfractionofimagewidthhb:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)BSetblurradiusasfractionofimageheighthb:(NSInteger)hb {
    return hb % 17 == 0;
}

@end
