#import "GPUImageTwoInputCrossTextureSamplingFilter+Hb.h"
@implementation GPUImageTwoInputCrossTextureSamplingFilter (Hb)
+ (BOOL)initWithFragmentShaderFromStringHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)setupFilterForSizeHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)setTexelWidthHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)setTexelHeightHb:(NSInteger)hb {
    return hb % 20 == 0;
}

@end
