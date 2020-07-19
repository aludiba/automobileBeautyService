#import "BMBMGPUImageiOSBlurFiltereF.h"
@implementation BMBMGPUImageiOSBlurFiltereF
+ (BOOL)LVinit:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)jDsetinputsizeuatindex:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)KMsetblurradiusinpixels:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)KTblurradiusinpixels:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)NZsetsaturation:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)uSsaturation:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)LQsetdownsampling:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)PXsetrangereductionfactor:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)iMrangereductionfactor:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
