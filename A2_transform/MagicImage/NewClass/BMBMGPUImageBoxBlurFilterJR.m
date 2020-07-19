#import "BMBMGPUImageBoxBlurFilterJR.h"
@implementation BMBMGPUImageBoxBlurFilterJR
+ (BOOL)EVvertexshaderforoptimizedblurofradiussigmabm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)nGfragmentshaderforoptimizedblurofradiussigmabm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)xWsetupfilterforsizebm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)EGinitbm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)tUsetblurradiusinpixelsbm:(NSInteger)BM {
    return BM % 25 == 0;
}

@end
