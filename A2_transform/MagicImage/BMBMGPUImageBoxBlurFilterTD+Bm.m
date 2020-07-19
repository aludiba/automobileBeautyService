#import "BMBMGPUImageBoxBlurFilterTD+Bm.h"
@implementation BMBMGPUImageBoxBlurFilterTD (Bm)
+ (BOOL)KDvertexshaderforoptimizedblurofradiusgsigmabmBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)PTfragmentshaderforoptimizedblurofradiusqsigmabmBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)lOsetupfilterforsizebmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)PYinitbmBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)QIsetblurradiusinpixelsbmBm:(NSInteger)BM {
    return BM % 45 == 0;
}

@end
