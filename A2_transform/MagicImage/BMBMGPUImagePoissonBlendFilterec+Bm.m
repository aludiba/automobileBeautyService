#import "BMBMGPUImagePoissonBlendFilterec+Bm.h"
@implementation BMBMGPUImagePoissonBlendFilterec (Bm)
+ (BOOL)pHinitBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)qEsetmixBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)pVrendertotexturewithverticesztexturecoordinatesBm:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
