#import "BMGPUImagePoissonBlendFiltere+Bm.h"
@implementation BMGPUImagePoissonBlendFiltere (Bm)
+ (BOOL)HinitBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)eSetmixBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)VRendertotexturewithverticeszTexturecoordinatesBm:(NSInteger)BM {
    return BM % 47 == 0;
}

@end
