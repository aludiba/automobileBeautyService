#import "GPUImage3x3TextureSamplingFilter+HbHb.h"
@implementation GPUImage3x3TextureSamplingFilter (HbHb)
+ (BOOL)initWithVertexShaderFromStringFragmentshaderfromstringHbHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)initWithFragmentShaderFromStringHbHb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)setupFilterForSizeHbHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)setTexelWidthHbHb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)setTexelHeightHbHb:(NSInteger)hb {
    return hb % 23 == 0;
}

@end
