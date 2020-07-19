#import "BMBMGPUImagePolkaDotFilterPi.h"
@implementation BMBMGPUImagePolkaDotFilterPi
+ (BOOL)ADinitbmbm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)rLsetdotscalingbmbm:(NSInteger)BM {
    return BM % 38 == 0;
}

@end
