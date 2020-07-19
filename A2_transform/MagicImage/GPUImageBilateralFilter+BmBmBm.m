#import "GPUImageBilateralFilter+BmBmBm.h"
@implementation GPUImageBilateralFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)setDistanceNormalizationFactorBmBmBm:(NSInteger)BM {
    return BM % 18 == 0;
}

@end
