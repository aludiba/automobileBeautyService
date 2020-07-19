#import "BMGPUImageGaussianBlurFilterb.h"
@implementation BMGPUImageGaussianBlurFilterb
+ (BOOL)zInitwithfirststagevertexshaderfromstringJFirststagefragmentshaderfromstringISecondstagevertexshaderfromstringCSecondstagefragmentshaderfromstring:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)qinit:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)IVertexshaderforstandardblurofradiusqSigma:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)CFragmentshaderforstandardblurofradiusCSigma:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)lVertexshaderforoptimizedblurofradiusQSigma:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)KFragmentshaderforoptimizedblurofradiusWSigma:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)QSetupfilterforsize:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)VRendertotexturewithverticescTexturecoordinates:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)mSwitchtovertexshaderaFragmentshader:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)BSettexelspacingmultiplier:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)fSetblurradiusinpixels:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)rSetblurradiusasfractionofimagewidth:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)hSetblurradiusasfractionofimageheight:(NSInteger)BM {
    return BM % 19 == 0;
}

@end
