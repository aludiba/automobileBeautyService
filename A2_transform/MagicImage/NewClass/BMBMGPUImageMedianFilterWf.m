#import "BMBMGPUImageMedianFilterWf.h"
@implementation BMBMGPUImageMedianFilterWf
+ (BOOL)dGinitbm:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
