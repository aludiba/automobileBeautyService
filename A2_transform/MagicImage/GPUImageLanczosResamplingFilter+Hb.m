#import "GPUImageLanczosResamplingFilter+Hb.h"
@implementation GPUImageLanczosResamplingFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)setInputSizeAtindexHb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)setupFilterForSizeHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesHb:(NSInteger)hb {
    return hb % 33 == 0;
}

@end
