#import "BMBMBMGPUImageSingleComponentGaussianBlurFilterjUH.h"
@implementation BMBMBMGPUImageSingleComponentGaussianBlurFilterjUH
+ (BOOL)aPwvertexshaderforoptimizedblurofradiushsigma:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)sEvfragmentshaderforoptimizedblurofradiushsigma:(NSInteger)BM {
    return BM % 27 == 0;
}

@end
