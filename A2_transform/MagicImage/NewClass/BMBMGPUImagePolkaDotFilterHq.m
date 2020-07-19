#import "BMBMGPUImagePolkaDotFilterHq.h"
@implementation BMBMGPUImagePolkaDotFilterHq
+ (BOOL)BPinit:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)YSsetdotscaling:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
