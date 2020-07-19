#import "GPUImagePolkaDotFilter+Bm.h"
@implementation GPUImagePolkaDotFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)setDotScalingBm:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
