#import "BMBMGPUImagePolkaDotFilterPz.h"
@implementation BMBMGPUImagePolkaDotFilterPz
+ (BOOL)jDinitbm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)DLsetdotscalingbm:(NSInteger)BM {
    return BM % 33 == 0;
}

@end
