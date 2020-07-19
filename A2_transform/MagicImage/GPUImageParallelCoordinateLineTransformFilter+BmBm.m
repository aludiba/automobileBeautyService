#import "GPUImageParallelCoordinateLineTransformFilter+BmBm.h"
@implementation GPUImageParallelCoordinateLineTransformFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)deallocBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)initializeAttributesBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)generateLineCoordinatesBmBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)newFrameReadyAtTimeAtindexBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBmBm:(NSInteger)BM {
    return BM % 34 == 0;
}

@end
