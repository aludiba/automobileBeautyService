#import "BMBMGPUImagePolkaDotFiltercp.h"
@implementation BMBMGPUImagePolkaDotFiltercp
+ (BOOL)FEinitbm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)xSsetdotscalingbm:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
