#import "BMGPUImagePolkaDotFilterH+BmBm.h"
@implementation BMGPUImagePolkaDotFilterH (BmBm)
+ (BOOL)pinitBmBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)SSetdotscalingBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
