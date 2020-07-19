#import "BMBMGPUImageBoxBlurFilterTi+Bm.h"
@implementation BMBMGPUImageBoxBlurFilterTi (Bm)
+ (BOOL)fDvertexshaderforoptimizedblurofradiusgsigmaBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)sTfragmentshaderforoptimizedblurofradiusqsigmaBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)VOsetupfilterforsizeBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)iYinitBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)kIsetblurradiusinpixelsBm:(NSInteger)BM {
    return BM % 27 == 0;
}

@end
