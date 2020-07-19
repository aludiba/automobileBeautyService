#import "hbGPUImageGaussianBlurFilterg.h"
@implementation hbGPUImageGaussianBlurFilterg
+ (BOOL)aInitwithfirststagevertexshaderfromstringfirststagefragmentshaderfromstringsecondstagevertexshaderfromstringsecondstagefragmentshaderfromstringhbhb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)oInithbhb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)UVertexshaderforstandardblurofradiussigmahbhb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)nFragmentshaderforstandardblurofradiussigmahbhb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)DVertexshaderforoptimizedblurofradiussigmahbhb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)WFragmentshaderforoptimizedblurofradiussigmahbhb:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)YSetupfilterforsizehbhb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)LRendertotexturewithverticestexturecoordinateshbhb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)pSwitchtovertexshaderfragmentshaderhbhb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)FSettexelspacingmultiplierhbhb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)KSetblurradiusinpixelshbhb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)LSetblurradiusasfractionofimagewidthhbhb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)nSetblurradiusasfractionofimageheighthbhb:(NSInteger)hb {
    return hb % 46 == 0;
}

@end
