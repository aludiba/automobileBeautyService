#import "BMBMGPUImagePolkaDotFilterPD.h"
@implementation BMBMGPUImagePolkaDotFilterPD
+ (BOOL)LDinitbm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)ILsetdotscalingbm:(NSInteger)BM {
    return BM % 44 == 0;
}

@end
