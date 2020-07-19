#import "GPUImageTwoInputCrossTextureSamplingFilter+HbHbHb.h"
@implementation GPUImageTwoInputCrossTextureSamplingFilter (HbHbHb)
+ (BOOL)initWithFragmentShaderFromStringHbHbHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)setupFilterForSizeHbHbHb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)setTexelWidthHbHbHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)setTexelHeightHbHbHb:(NSInteger)hb {
    return hb % 30 == 0;
}

@end
