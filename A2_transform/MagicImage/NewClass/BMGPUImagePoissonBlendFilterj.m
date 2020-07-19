#import "BMGPUImagePoissonBlendFilterj.h"
@implementation BMGPUImagePoissonBlendFilterj
+ (BOOL)bInitbm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)eSetmixbm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)CRendertotexturewithverticestexturecoordinatesbm:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
