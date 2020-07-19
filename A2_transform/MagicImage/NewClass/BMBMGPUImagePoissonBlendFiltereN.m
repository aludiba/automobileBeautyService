#import "BMBMGPUImagePoissonBlendFiltereN.h"
@implementation BMBMGPUImagePoissonBlendFiltereN
+ (BOOL)UHinit:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)VEsetmix:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)NVrendertotexturewithverticesztexturecoordinates:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
