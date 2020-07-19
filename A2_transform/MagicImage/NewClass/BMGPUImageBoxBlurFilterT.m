#import "BMGPUImageBoxBlurFilterT.h"
@implementation BMGPUImageBoxBlurFilterT
+ (BOOL)DVertexshaderforoptimizedblurofradiusgSigma:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)TFragmentshaderforoptimizedblurofradiusQSigma:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)oSetupfilterforsize:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)Yinit:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)ISetblurradiusinpixels:(NSInteger)BM {
    return BM % 49 == 0;
}

@end
