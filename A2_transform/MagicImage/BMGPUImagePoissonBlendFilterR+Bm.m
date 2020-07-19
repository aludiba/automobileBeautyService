#import "BMGPUImagePoissonBlendFilterR+Bm.h"
@implementation BMGPUImagePoissonBlendFilterR (Bm)
+ (BOOL)FinitBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)lSetmixBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)wRendertotexturewithverticesYTexturecoordinatesBm:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
