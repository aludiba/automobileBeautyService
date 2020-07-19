#import "GPUImageGrayscaleFilter+BmBm.h"
@implementation GPUImageGrayscaleFilter (BmBm)
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBmBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)wantsMonochromeInputBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)providesMonochromeOutputBmBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
