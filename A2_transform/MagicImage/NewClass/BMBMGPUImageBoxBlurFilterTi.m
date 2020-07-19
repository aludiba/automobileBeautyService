#import "BMBMGPUImageBoxBlurFilterTi.h"
@implementation BMBMGPUImageBoxBlurFilterTi
+ (BOOL)fDvertexshaderforoptimizedblurofradiusgsigma:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)sTfragmentshaderforoptimizedblurofradiusqsigma:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)VOsetupfilterforsize:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)iYinit:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)kIsetblurradiusinpixels:(NSInteger)BM {
    return BM % 50 == 0;
}

@end
