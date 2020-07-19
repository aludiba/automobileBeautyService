#import "BMGPUImageiOSBlurFilterT.h"
@implementation BMGPUImageiOSBlurFilterT
+ (BOOL)Jinit:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)fSetinputsizeRAtindex:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)QSetblurradiusinpixels:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)jblurRadiusInPixels:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)mSetsaturation:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)csaturation:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)KSetdownsampling:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)lSetrangereductionfactor:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)trangeReductionFactor:(NSInteger)BM {
    return BM % 19 == 0;
}

@end
