#import "BMGPUImageZoomBlurFilterJ+BmBm.h"
@implementation BMGPUImageZoomBlurFilterJ (BmBm)
+ (BOOL)RinitBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)WSetinputrotationOAtindexBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)LSetblursizeBmBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)cSetblurcenterBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}

@end
