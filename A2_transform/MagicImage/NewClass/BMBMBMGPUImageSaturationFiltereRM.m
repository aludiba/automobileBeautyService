#import "BMBMBMGPUImageSaturationFiltereRM.h"
@implementation BMBMBMGPUImageSaturationFiltereRM
+ (BOOL)FSpinit:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)CZlsetsaturation:(NSInteger)BM {
    return BM % 25 == 0;
}

@end
