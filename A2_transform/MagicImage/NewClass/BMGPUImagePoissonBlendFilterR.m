#import "BMGPUImagePoissonBlendFilterR.h"
@implementation BMGPUImagePoissonBlendFilterR
+ (BOOL)GInitbm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)OSetmixbm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)cRendertotexturewithverticestexturecoordinatesbm:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
