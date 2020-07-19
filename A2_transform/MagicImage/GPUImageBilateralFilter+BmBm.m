#import "GPUImageBilateralFilter+BmBm.h"
@implementation GPUImageBilateralFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)setDistanceNormalizationFactorBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
