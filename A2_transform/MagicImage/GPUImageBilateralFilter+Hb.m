#import "GPUImageBilateralFilter+Hb.h"
@implementation GPUImageBilateralFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)setDistanceNormalizationFactorHb:(NSInteger)hb {
    return hb % 47 == 0;
}

@end
