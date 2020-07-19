#import "GPUImageLuminanceRangeFilter+Bm.h"
@implementation GPUImageLuminanceRangeFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)setRangeReductionFactorBm:(NSInteger)BM {
    return BM % 7 == 0;
}

@end
