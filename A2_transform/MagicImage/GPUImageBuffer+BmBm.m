#import "GPUImageBuffer+BmBm.h"
@implementation GPUImageBuffer (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)deallocBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)newFrameReadyAtTimeAtindexBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBmBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)setBufferSizeBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
