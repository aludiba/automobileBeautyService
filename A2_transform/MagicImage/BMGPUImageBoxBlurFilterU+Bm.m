#import "BMGPUImageBoxBlurFilterU+Bm.h"
@implementation BMGPUImageBoxBlurFilterU (Bm)
+ (BOOL)aVertexshaderforoptimizedblurofradiussSigmaBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)WFragmentshaderforoptimizedblurofradiusaSigmaBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)fSetupfilterforsizeBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)FinitBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)YSetblurradiusinpixelsBm:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
