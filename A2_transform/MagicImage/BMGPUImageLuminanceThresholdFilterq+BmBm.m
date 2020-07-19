#import "BMGPUImageLuminanceThresholdFilterq+BmBm.h"
@implementation BMGPUImageLuminanceThresholdFilterq (BmBm)
+ (BOOL)KinitBmBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)gSetthresholdBmBm:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
