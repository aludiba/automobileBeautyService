#import "BMGPUImageBoxBlurFilterq.h"
@implementation BMGPUImageBoxBlurFilterq
+ (BOOL)UVertexshaderforoptimizedblurofradiussigmabm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)vFragmentshaderforoptimizedblurofradiussigmabm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)XSetupfilterforsizebm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)sInitbm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)OSetblurradiusinpixelsbm:(NSInteger)BM {
    return BM % 34 == 0;
}

@end
