#import "GPUImagePolkaDotFilter+BmBm.h"
@implementation GPUImagePolkaDotFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)setDotScalingBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
