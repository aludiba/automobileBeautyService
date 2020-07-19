#import "GPUImageDirectionalNonMaximumSuppressionFilter+Hb.h"
@implementation GPUImageDirectionalNonMaximumSuppressionFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)setupFilterForSizeHb:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)setTexelWidthHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)setTexelHeightHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)setLowerThresholdHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)setUpperThresholdHb:(NSInteger)hb {
    return hb % 48 == 0;
}

@end
