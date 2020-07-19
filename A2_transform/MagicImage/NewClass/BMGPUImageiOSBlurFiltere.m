#import "BMGPUImageiOSBlurFiltere.h"
@implementation BMGPUImageiOSBlurFiltere
+ (BOOL)Vinit:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)dSetinputsizeuAtindex:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)mSetblurradiusinpixels:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)TblurRadiusInPixels:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)ZSetsaturation:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)ssaturation:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)qSetdownsampling:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)XSetrangereductionfactor:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)mrangeReductionFactor:(NSInteger)BM {
    return BM % 46 == 0;
}

@end
