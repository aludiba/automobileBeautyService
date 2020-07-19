#import "BMGPUImageBoxBlurFilterU.h"
@implementation BMGPUImageBoxBlurFilterU
+ (BOOL)aVertexshaderforoptimizedblurofradiussSigma:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)WFragmentshaderforoptimizedblurofradiusaSigma:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)fSetupfilterforsize:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)Finit:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)YSetblurradiusinpixels:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
