#import "GPUImageParallelCoordinateLineTransformFilter+Bm.h"
@implementation GPUImageParallelCoordinateLineTransformFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)deallocBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)initializeAttributesBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)generateLineCoordinatesBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)newFrameReadyAtTimeAtindexBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBm:(NSInteger)BM {
    return BM % 25 == 0;
}

@end
