#import "BMBMGPUImageBoxBlurFilterTD.h"
@implementation BMBMGPUImageBoxBlurFilterTD
+ (BOOL)KDvertexshaderforoptimizedblurofradiusgsigmabm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)PTfragmentshaderforoptimizedblurofradiusqsigmabm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)lOsetupfilterforsizebm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)PYinitbm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)QIsetblurradiusinpixelsbm:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
