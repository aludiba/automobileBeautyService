#import "GPUImageGrayscaleFilter+BmBmHb.h"
@implementation GPUImageGrayscaleFilter (BmBmHb)
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBmBmHb:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)wantsMonochromeInputBmBmHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)providesMonochromeOutputBmBmHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)initBmBmHb:(NSInteger)hb {
    return hb % 34 == 0;
}

@end
