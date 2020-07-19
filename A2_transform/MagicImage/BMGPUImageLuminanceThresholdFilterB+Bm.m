#import "BMGPUImageLuminanceThresholdFilterB+Bm.h"
@implementation BMGPUImageLuminanceThresholdFilterB (Bm)
+ (BOOL)uinitBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)WSetthresholdBm:(NSInteger)BM {
    return BM % 50 == 0;
}

@end
