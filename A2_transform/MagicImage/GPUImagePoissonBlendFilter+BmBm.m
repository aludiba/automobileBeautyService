#import "GPUImagePoissonBlendFilter+BmBm.h"
@implementation GPUImagePoissonBlendFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)setMixBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBmBm:(NSInteger)BM {
    return BM % 9 == 0;
}

@end
