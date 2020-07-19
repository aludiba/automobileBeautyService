#import "GPUImageiOSBlurFilter+Hb.h"
@implementation GPUImageiOSBlurFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)setInputSizeAtindexHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)setBlurRadiusInPixelsHb:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)blurRadiusInPixelsHb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)setSaturationHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)saturationHb:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)setDownsamplingHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)setRangeReductionFactorHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)rangeReductionFactorHb:(NSInteger)hb {
    return hb % 15 == 0;
}

@end
