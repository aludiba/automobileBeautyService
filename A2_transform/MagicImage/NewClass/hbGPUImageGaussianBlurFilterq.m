#import "hbGPUImageGaussianBlurFilterq.h"
@implementation hbGPUImageGaussianBlurFilterq
+ (BOOL)tInitwithfirststagevertexshaderfromstringdFirststagefragmentshaderfromstringcSecondstagevertexshaderfromstringuSecondstagefragmentshaderfromstring:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)Iinit:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)GVertexshaderforstandardblurofradiusvSigma:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)cFragmentshaderforstandardblurofradiusBSigma:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)HVertexshaderforoptimizedblurofradiusDSigma:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)TFragmentshaderforoptimizedblurofradiusuSigma:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)DSetupfilterforsize:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)nRendertotexturewithverticesMTexturecoordinates:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)PSwitchtovertexshaderVFragmentshader:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)PSettexelspacingmultiplier:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)eSetblurradiusinpixels:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)RSetblurradiusasfractionofimagewidth:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)NSetblurradiusasfractionofimageheight:(NSInteger)hb {
    return hb % 8 == 0;
}

@end
