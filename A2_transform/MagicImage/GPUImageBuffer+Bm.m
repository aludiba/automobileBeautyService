#import "GPUImageBuffer+Bm.h"
@implementation GPUImageBuffer (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)deallocBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)newFrameReadyAtTimeAtindexBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)setBufferSizeBm:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
