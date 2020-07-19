#import "GPUImageGrayscaleFilter+Bm.h"
@implementation GPUImageGrayscaleFilter (Bm)
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)wantsMonochromeInputBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)providesMonochromeOutputBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 50 == 0;
}

@end
