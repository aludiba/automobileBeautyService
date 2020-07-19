#import "GPUImageLanczosResamplingFilter+BmBmBmHbHb.h"
@implementation GPUImageLanczosResamplingFilter (BmBmBmHbHb)
+ (BOOL)initBmBmBmHbHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)setInputSizeAtindexBmBmBmHbHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)setupFilterForSizeBmBmBmHbHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBmBmBmHbHb:(NSInteger)hb {
    return hb % 9 == 0;
}

@end
