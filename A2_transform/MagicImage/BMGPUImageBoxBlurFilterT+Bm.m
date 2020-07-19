#import "BMGPUImageBoxBlurFilterT+Bm.h"
@implementation BMGPUImageBoxBlurFilterT (Bm)
+ (BOOL)DVertexshaderforoptimizedblurofradiusgSigmaBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)TFragmentshaderforoptimizedblurofradiusQSigmaBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)oSetupfilterforsizeBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)YinitBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)ISetblurradiusinpixelsBm:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
