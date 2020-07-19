#import "BMGPUImageLinearBurnBlendFilterf+Bm.h"
@implementation BMGPUImageLinearBurnBlendFilterf (Bm)
+ (BOOL)einitBm:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
