#import "GPUImageLanczosResamplingFilter+BmBmBmHb.h"
@implementation GPUImageLanczosResamplingFilter (BmBmBmHb)
+ (BOOL)initBmBmBmHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)setInputSizeAtindexBmBmBmHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)setupFilterForSizeBmBmBmHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBmBmBmHb:(NSInteger)hb {
    return hb % 21 == 0;
}

@end
