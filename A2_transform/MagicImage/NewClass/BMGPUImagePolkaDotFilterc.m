#import "BMGPUImagePolkaDotFilterc.h"
@implementation BMGPUImagePolkaDotFilterc
+ (BOOL)EInitbm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)SSetdotscalingbm:(NSInteger)BM {
    return BM % 37 == 0;
}

@end
