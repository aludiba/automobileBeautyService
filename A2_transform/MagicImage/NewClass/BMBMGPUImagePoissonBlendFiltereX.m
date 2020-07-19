#import "BMBMGPUImagePoissonBlendFiltereX.h"
@implementation BMBMGPUImagePoissonBlendFiltereX
+ (BOOL)NHinitbm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)VEsetmixbm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)hVrendertotexturewithverticesztexturecoordinatesbm:(NSInteger)BM {
    return BM % 39 == 0;
}

@end
