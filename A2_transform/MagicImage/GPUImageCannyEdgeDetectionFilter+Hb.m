#import "GPUImageCannyEdgeDetectionFilter+Hb.h"
@implementation GPUImageCannyEdgeDetectionFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)setBlurRadiusInPixelsHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)blurRadiusInPixelsHb:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)setBlurTexelSpacingMultiplierHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)blurTexelSpacingMultiplierHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)setTexelWidthHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)texelWidthHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)setTexelHeightHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)texelHeightHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)setUpperThresholdHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)upperThresholdHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)setLowerThresholdHb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)lowerThresholdHb:(NSInteger)hb {
    return hb % 19 == 0;
}

@end
