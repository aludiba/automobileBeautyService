#import "GPUImagePoissonBlendFilter+Bm.h"
@implementation GPUImagePoissonBlendFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)setMixBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBm:(NSInteger)BM {
    return BM % 30 == 0;
}

@end
