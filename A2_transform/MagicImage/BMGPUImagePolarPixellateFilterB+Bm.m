#import "BMGPUImagePolarPixellateFilterB+Bm.h"
@implementation BMGPUImagePolarPixellateFilterB (Bm)
+ (BOOL)rinitBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)bSetinputrotationmAtindexBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)cSetpixelsizeBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)ESetcenterBm:(NSInteger)BM {
    return BM % 17 == 0;
}

@end
