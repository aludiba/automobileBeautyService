#import "GPUImageLuminanceRangeFilter+BmBm.h"
@implementation GPUImageLuminanceRangeFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)setRangeReductionFactorBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
