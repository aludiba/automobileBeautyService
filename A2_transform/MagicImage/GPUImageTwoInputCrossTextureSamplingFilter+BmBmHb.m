#import "GPUImageTwoInputCrossTextureSamplingFilter+BmBmHb.h"
@implementation GPUImageTwoInputCrossTextureSamplingFilter (BmBmHb)
+ (BOOL)initWithFragmentShaderFromStringBmBmHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)setupFilterForSizeBmBmHb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)setTexelWidthBmBmHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)setTexelHeightBmBmHb:(NSInteger)hb {
    return hb % 37 == 0;
}

@end
