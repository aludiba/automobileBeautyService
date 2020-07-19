#import "GPUImageAverageColor+BmBm.h"
@implementation GPUImageAverageColor (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)deallocBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)setInputRotationAtindexBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)extractAverageColorAtFrameTimeBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}

@end
