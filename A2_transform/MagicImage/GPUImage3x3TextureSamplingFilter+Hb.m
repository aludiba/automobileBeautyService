#import "GPUImage3x3TextureSamplingFilter+Hb.h"
@implementation GPUImage3x3TextureSamplingFilter (Hb)
+ (BOOL)initWithVertexShaderFromStringFragmentshaderfromstringHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)initWithFragmentShaderFromStringHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)setupFilterForSizeHb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)setTexelWidthHb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)setTexelHeightHb:(NSInteger)hb {
    return hb % 41 == 0;
}

@end
