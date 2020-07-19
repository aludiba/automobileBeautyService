#import "GPUImagePoissonBlendFilter+Hb.h"
@implementation GPUImagePoissonBlendFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)setMixHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesHb:(NSInteger)hb {
    return hb % 38 == 0;
}

@end
