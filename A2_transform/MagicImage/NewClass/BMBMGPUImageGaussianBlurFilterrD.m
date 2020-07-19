#import "BMBMGPUImageGaussianBlurFilterrD.h"
@implementation BMBMGPUImageGaussianBlurFilterrD
+ (BOOL)tIinitwithfirststagevertexshaderfromstringyfirststagefragmentshaderfromstringvsecondstagevertexshaderfromstringusecondstagefragmentshaderfromstring:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)aVinit:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)WHvertexshaderforstandardblurofradiusssigma:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)GIfragmentshaderforstandardblurofradiusfsigma:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)eBvertexshaderforoptimizedblurofradiusosigma:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)GHfragmentshaderforoptimizedblurofradiusfsigma:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)jKsetupfilterforsize:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)lDrendertotexturewithverticesktexturecoordinates:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)APswitchtovertexshaderdfragmentshader:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)lVsettexelspacingmultiplier:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)IBsetblurradiusinpixels:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)UTsetblurradiusasfractionofimagewidth:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)DRsetblurradiusasfractionofimageheight:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
