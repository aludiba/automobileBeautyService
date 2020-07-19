#import "GPUImageJFAVoronoiFilter+Bm.h"
@implementation GPUImageJFAVoronoiFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)setSizeInPixelsBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)nextPowerOfTwoBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBm:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
