#import "GPUImageCannyEdgeDetectionFilter+BmHb.h"
@implementation GPUImageCannyEdgeDetectionFilter (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)setBlurRadiusInPixelsBmHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)blurRadiusInPixelsBmHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)setBlurTexelSpacingMultiplierBmHb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)blurTexelSpacingMultiplierBmHb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)setTexelWidthBmHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)texelWidthBmHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)setTexelHeightBmHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)texelHeightBmHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)setUpperThresholdBmHb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)upperThresholdBmHb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)setLowerThresholdBmHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)lowerThresholdBmHb:(NSInteger)hb {
    return hb % 35 == 0;
}

@end
