#import "GPUImageJFAVoronoiFilter+BmHb.h"
@implementation GPUImageJFAVoronoiFilter (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)setSizeInPixelsBmHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)nextPowerOfTwoBmHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBmHb:(NSInteger)hb {
    return hb % 37 == 0;
}

@end
