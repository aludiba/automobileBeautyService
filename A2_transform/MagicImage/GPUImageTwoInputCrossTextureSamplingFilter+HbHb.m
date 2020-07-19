#import "GPUImageTwoInputCrossTextureSamplingFilter+HbHb.h"
@implementation GPUImageTwoInputCrossTextureSamplingFilter (HbHb)
+ (BOOL)initWithFragmentShaderFromStringHbHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)setupFilterForSizeHbHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)setTexelWidthHbHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)setTexelHeightHbHb:(NSInteger)hb {
    return hb % 47 == 0;
}

@end
