#import "BMGPUImageGaussianBlurFilterr.h"
@implementation BMGPUImageGaussianBlurFilterr
+ (BOOL)iInitwithfirststagevertexshaderfromstringYFirststagefragmentshaderfromstringVSecondstagevertexshaderfromstringuSecondstagefragmentshaderfromstring:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)Vinit:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)HVertexshaderforstandardblurofradiussSigma:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)iFragmentshaderforstandardblurofradiusfSigma:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)bVertexshaderforoptimizedblurofradiusoSigma:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)hFragmentshaderforoptimizedblurofradiusfSigma:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)kSetupfilterforsize:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)DRendertotexturewithverticeskTexturecoordinates:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)PSwitchtovertexshaderdFragmentshader:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)VSettexelspacingmultiplier:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)BSetblurradiusinpixels:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)TSetblurradiusasfractionofimagewidth:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)RSetblurradiusasfractionofimageheight:(NSInteger)BM {
    return BM % 38 == 0;
}

@end
