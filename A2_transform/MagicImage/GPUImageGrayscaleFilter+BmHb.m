#import "GPUImageGrayscaleFilter+BmHb.h"
@implementation GPUImageGrayscaleFilter (BmHb)
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBmHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)wantsMonochromeInputBmHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)providesMonochromeOutputBmHb:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)initBmHb:(NSInteger)hb {
    return hb % 50 == 0;
}

@end
