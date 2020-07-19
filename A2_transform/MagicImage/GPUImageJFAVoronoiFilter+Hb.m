#import "GPUImageJFAVoronoiFilter+Hb.h"
@implementation GPUImageJFAVoronoiFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)setSizeInPixelsHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)nextPowerOfTwoHb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesHb:(NSInteger)hb {
    return hb % 43 == 0;
}

@end
