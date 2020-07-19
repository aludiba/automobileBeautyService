#import "BMGPUImageBoxBlurFilterT+BmBm.h"
@implementation BMGPUImageBoxBlurFilterT (BmBm)
+ (BOOL)DVertexshaderforoptimizedblurofradiusgSigmaBmBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)TFragmentshaderforoptimizedblurofradiusQSigmaBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)oSetupfilterforsizeBmBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)YinitBmBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)ISetblurradiusinpixelsBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
