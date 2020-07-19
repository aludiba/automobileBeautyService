#import "GPUImageBilateralFilter+Bm.h"
@implementation GPUImageBilateralFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)setDistanceNormalizationFactorBm:(NSInteger)BM {
    return BM % 11 == 0;
}

@end
