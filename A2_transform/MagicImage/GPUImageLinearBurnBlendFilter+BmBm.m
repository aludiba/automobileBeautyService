#import "GPUImageLinearBurnBlendFilter+BmBm.h"
@implementation GPUImageLinearBurnBlendFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}

@end
