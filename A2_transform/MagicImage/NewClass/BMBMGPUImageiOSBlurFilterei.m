#import "BMBMGPUImageiOSBlurFilterei.h"
@implementation BMBMGPUImageiOSBlurFilterei
+ (BOOL)lVinit:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)HDsetinputsizeuatindex:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)oMsetblurradiusinpixels:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)uTblurradiusinpixels:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)EZsetsaturation:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)ISsaturation:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)tQsetdownsampling:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)UXsetrangereductionfactor:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)tMrangereductionfactor:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
