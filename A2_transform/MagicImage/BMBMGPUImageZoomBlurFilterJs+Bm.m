#import "BMBMGPUImageZoomBlurFilterJs+Bm.h"
@implementation BMBMGPUImageZoomBlurFilterJs (Bm)
+ (BOOL)sRinitBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)AWsetinputrotationoatindexBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)pLsetblursizeBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)KCsetblurcenterBm:(NSInteger)BM {
    return BM % 15 == 0;
}

@end
