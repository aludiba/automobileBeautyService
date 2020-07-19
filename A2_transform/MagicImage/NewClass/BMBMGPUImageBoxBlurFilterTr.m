#import "BMBMGPUImageBoxBlurFilterTr.h"
@implementation BMBMGPUImageBoxBlurFilterTr
+ (BOOL)PDvertexshaderforoptimizedblurofradiusgsigma:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)rTfragmentshaderforoptimizedblurofradiusqsigma:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)iOsetupfilterforsize:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)PYinit:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)LIsetblurradiusinpixels:(NSInteger)BM {
    return BM % 45 == 0;
}

@end
