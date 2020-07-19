#import "BMGPUImageZoomBlurFilterJ+Bm.h"
@implementation BMGPUImageZoomBlurFilterJ (Bm)
+ (BOOL)RinitBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)WSetinputrotationOAtindexBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)LSetblursizeBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)cSetblurcenterBm:(NSInteger)BM {
    return BM % 44 == 0;
}

@end
