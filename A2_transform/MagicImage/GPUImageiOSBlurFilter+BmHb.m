#import "GPUImageiOSBlurFilter+BmHb.h"
@implementation GPUImageiOSBlurFilter (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)setInputSizeAtindexBmHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)setBlurRadiusInPixelsBmHb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)blurRadiusInPixelsBmHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)setSaturationBmHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)saturationBmHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)setDownsamplingBmHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)setRangeReductionFactorBmHb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)rangeReductionFactorBmHb:(NSInteger)hb {
    return hb % 19 == 0;
}

@end
