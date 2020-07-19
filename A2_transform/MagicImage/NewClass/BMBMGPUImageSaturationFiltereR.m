#import "BMBMGPUImageSaturationFiltereR.h"
@implementation BMBMGPUImageSaturationFiltereR
+ (BOOL)SPinit:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)ZLsetsaturation:(NSInteger)BM {
    return BM % 20 == 0;
}

@end
