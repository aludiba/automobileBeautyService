#import "GPUImageJFAVoronoiFilter+BmBm.h"
@implementation GPUImageJFAVoronoiFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)setSizeInPixelsBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)nextPowerOfTwoBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}

@end
