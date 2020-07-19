#import "GPUImageBilateralFilter+HbHb.h"
@implementation GPUImageBilateralFilter (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)setDistanceNormalizationFactorHbHb:(NSInteger)hb {
    return hb % 7 == 0;
}

@end
