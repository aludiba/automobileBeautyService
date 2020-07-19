#import "BMBMGPUImageMotionBlurFilterlr+Bm.h"
@implementation BMBMGPUImageMotionBlurFilterlr (Bm)
+ (BOOL)WEinitBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)YSsetinputsizefatindexBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)vHrecalculatetexeloffsetsBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)WTsetinputrotationvatindexBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)gPsetblurangleBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)AOsetblursizeBm:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
