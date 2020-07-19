#import "GPUImageCannyEdgeDetectionFilter+BmBmHb.h"
@implementation GPUImageCannyEdgeDetectionFilter (BmBmHb)
+ (BOOL)initBmBmHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)setBlurRadiusInPixelsBmBmHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)blurRadiusInPixelsBmBmHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)setBlurTexelSpacingMultiplierBmBmHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)blurTexelSpacingMultiplierBmBmHb:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)setTexelWidthBmBmHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)texelWidthBmBmHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)setTexelHeightBmBmHb:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)texelHeightBmBmHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)setUpperThresholdBmBmHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)upperThresholdBmBmHb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)setLowerThresholdBmBmHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)lowerThresholdBmBmHb:(NSInteger)hb {
    return hb % 16 == 0;
}

@end
