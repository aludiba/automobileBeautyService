#import "GPUImagePolkaDotFilter+BmBmBm.h"
@implementation GPUImagePolkaDotFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)setDotScalingBmBmBm:(NSInteger)BM {
    return BM % 1 == 0;
}

@end
