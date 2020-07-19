#import "BMBMGPUImageGaussianBlurFilterrM.h"
@implementation BMBMGPUImageGaussianBlurFilterrM
+ (BOOL)gIinitwithfirststagevertexshaderfromstringyfirststagefragmentshaderfromstringvsecondstagevertexshaderfromstringusecondstagefragmentshaderfromstring:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)tVinit:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)zHvertexshaderforstandardblurofradiusssigma:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)WIfragmentshaderforstandardblurofradiusfsigma:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)xBvertexshaderforoptimizedblurofradiusosigma:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)pHfragmentshaderforoptimizedblurofradiusfsigma:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)cKsetupfilterforsize:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)nDrendertotexturewithverticesktexturecoordinates:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)iPswitchtovertexshaderdfragmentshader:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)WVsettexelspacingmultiplier:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)KBsetblurradiusinpixels:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)BTsetblurradiusasfractionofimagewidth:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)ARsetblurradiusasfractionofimageheight:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
