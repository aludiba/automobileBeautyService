#import "BMBMGPUImagePoissonBlendFilterec.h"
@implementation BMBMGPUImagePoissonBlendFilterec
+ (BOOL)pHinit:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)qEsetmix:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)pVrendertotexturewithverticesztexturecoordinates:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
