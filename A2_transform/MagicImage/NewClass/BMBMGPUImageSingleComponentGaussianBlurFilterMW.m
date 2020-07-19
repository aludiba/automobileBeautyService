#import "BMBMGPUImageSingleComponentGaussianBlurFilterMW.h"
@implementation BMBMGPUImageSingleComponentGaussianBlurFilterMW
+ (BOOL)KJvertexshaderforoptimizedblurofradiustsigma:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)eRfragmentshaderforoptimizedblurofradiusrsigma:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
