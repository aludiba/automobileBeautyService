#import "BMGPUImagePolkaDotFilterH+Bm.h"
@implementation BMGPUImagePolkaDotFilterH (Bm)
+ (BOOL)pinitBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)SSetdotscalingBm:(NSInteger)BM {
    return BM % 46 == 0;
}

@end
