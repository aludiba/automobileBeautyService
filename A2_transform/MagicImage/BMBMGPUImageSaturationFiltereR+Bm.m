#import "BMBMGPUImageSaturationFiltereR+Bm.h"
@implementation BMBMGPUImageSaturationFiltereR (Bm)
+ (BOOL)SPinitBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)ZLsetsaturationBm:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
