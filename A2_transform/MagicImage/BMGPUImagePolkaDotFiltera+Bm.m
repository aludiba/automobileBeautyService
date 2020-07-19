#import "BMGPUImagePolkaDotFiltera+Bm.h"
@implementation BMGPUImagePolkaDotFiltera (Bm)
+ (BOOL)xinitBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)ISetdotscalingBm:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
