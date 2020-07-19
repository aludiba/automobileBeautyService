#import "BMGPUImagePoissonBlendFiltere+BmBm.h"
@implementation BMGPUImagePoissonBlendFiltere (BmBm)
+ (BOOL)HinitBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)eSetmixBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)VRendertotexturewithverticeszTexturecoordinatesBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}

@end
