#import "GPUImageLanczosResamplingFilter+BmBm.h"
@implementation GPUImageLanczosResamplingFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)setInputSizeAtindexBmBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)setupFilterForSizeBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}

@end
