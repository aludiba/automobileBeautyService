#import "BMBMGPUImagePolkaDotFilterHP.h"
@implementation BMBMGPUImagePolkaDotFilterHP
+ (BOOL)DPinit:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)dSsetdotscaling:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
