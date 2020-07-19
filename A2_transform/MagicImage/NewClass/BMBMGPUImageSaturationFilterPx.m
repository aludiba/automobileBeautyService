#import "BMBMGPUImageSaturationFilterPx.h"
@implementation BMBMGPUImageSaturationFilterPx
+ (BOOL)sZinit:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)zPsetsaturation:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
