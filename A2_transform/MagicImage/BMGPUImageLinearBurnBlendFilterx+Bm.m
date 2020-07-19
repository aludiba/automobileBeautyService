#import "BMGPUImageLinearBurnBlendFilterx+Bm.h"
@implementation BMGPUImageLinearBurnBlendFilterx (Bm)
+ (BOOL)ainitBm:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
