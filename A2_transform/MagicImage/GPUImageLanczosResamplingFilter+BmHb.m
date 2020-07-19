#import "GPUImageLanczosResamplingFilter+BmHb.h"
@implementation GPUImageLanczosResamplingFilter (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)setInputSizeAtindexBmHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)setupFilterForSizeBmHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBmHb:(NSInteger)hb {
    return hb % 46 == 0;
}

@end
