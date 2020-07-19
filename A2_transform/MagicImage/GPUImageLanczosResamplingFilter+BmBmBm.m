#import "GPUImageLanczosResamplingFilter+BmBmBm.h"
@implementation GPUImageLanczosResamplingFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)setInputSizeAtindexBmBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)setupFilterForSizeBmBmBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBmBmBm:(NSInteger)BM {
    return BM % 47 == 0;
}

@end
