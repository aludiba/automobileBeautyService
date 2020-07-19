#import "GPUImageMaskFilter+HbHb.h"
@implementation GPUImageMaskFilter (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesHbHb:(NSInteger)hb {
    return hb % 37 == 0;
}

@end
