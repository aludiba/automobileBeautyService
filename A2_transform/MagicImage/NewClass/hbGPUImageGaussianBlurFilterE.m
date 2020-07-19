#import "hbGPUImageGaussianBlurFilterE.h"
@implementation hbGPUImageGaussianBlurFilterE
+ (BOOL)VInitwithfirststagevertexshaderfromstringOFirststagefragmentshaderfromstringfSecondstagevertexshaderfromstringZSecondstagefragmentshaderfromstring:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)Winit:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)sVertexshaderforstandardblurofradiusMSigma:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)DFragmentshaderforstandardblurofradiusiSigma:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)oVertexshaderforoptimizedblurofradiuswSigma:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)bFragmentshaderforoptimizedblurofradiuswSigma:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)vSetupfilterforsize:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)yRendertotexturewithverticesuTexturecoordinates:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)pSwitchtovertexshaderBFragmentshader:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)eSettexelspacingmultiplier:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)USetblurradiusinpixels:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)FSetblurradiusasfractionofimagewidth:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)eSetblurradiusasfractionofimageheight:(NSInteger)hb {
    return hb % 36 == 0;
}

@end
