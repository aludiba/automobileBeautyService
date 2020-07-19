#import "GPUImageMaskFilter+Hb.h"
@implementation GPUImageMaskFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesHb:(NSInteger)hb {
    return hb % 26 == 0;
}

@end
