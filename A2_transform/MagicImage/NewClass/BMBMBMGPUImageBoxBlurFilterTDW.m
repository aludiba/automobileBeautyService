#import "BMBMBMGPUImageBoxBlurFilterTDW.h"
@implementation BMBMBMGPUImageBoxBlurFilterTDW
+ (BOOL)fKdvertexshaderforoptimizedblurofradiusgsigmabm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)YPtfragmentshaderforoptimizedblurofradiusqsigmabm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)hLosetupfilterforsizebm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)CPyinitbm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)RQisetblurradiusinpixelsbm:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
