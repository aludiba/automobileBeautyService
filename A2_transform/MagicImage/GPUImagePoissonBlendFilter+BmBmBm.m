#import "GPUImagePoissonBlendFilter+BmBmBm.h"
@implementation GPUImagePoissonBlendFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)setMixBmBmBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBmBmBm:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
