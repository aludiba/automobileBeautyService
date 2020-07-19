#import "BMBMBMGPUImagePolkaDotFilterPze.h"
@implementation BMBMBMGPUImagePolkaDotFilterPze
+ (BOOL)LJdinitbm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)PDlsetdotscalingbm:(NSInteger)BM {
    return BM % 47 == 0;
}

@end
