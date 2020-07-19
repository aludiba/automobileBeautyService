#import "BMGPUImageBoxBlurFilterJ.h"
@implementation BMGPUImageBoxBlurFilterJ
+ (BOOL)VVertexshaderforoptimizedblurofradiussigmabm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)gFragmentshaderforoptimizedblurofradiussigmabm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)WSetupfilterforsizebm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)GInitbm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)USetblurradiusinpixelsbm:(NSInteger)BM {
    return BM % 43 == 0;
}

@end
