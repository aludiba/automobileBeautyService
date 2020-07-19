#import "BMBMGPUImageSingleComponentGaussianBlurFilterjU.h"
@implementation BMBMGPUImageSingleComponentGaussianBlurFilterjU
+ (BOOL)pWvertexshaderforoptimizedblurofradiushsigma:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)EVfragmentshaderforoptimizedblurofradiushsigma:(NSInteger)BM {
    return BM % 9 == 0;
}

@end
