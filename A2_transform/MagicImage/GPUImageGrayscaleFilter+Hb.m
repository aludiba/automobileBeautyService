#import "GPUImageGrayscaleFilter+Hb.h"
@implementation GPUImageGrayscaleFilter (Hb)
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)wantsMonochromeInputHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)providesMonochromeOutputHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 6 == 0;
}

@end
