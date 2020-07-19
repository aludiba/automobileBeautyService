#import "BMGPUImageiOSBlurFilterf.h"
@implementation BMGPUImageiOSBlurFilterf
+ (BOOL)TInitbm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)RSetinputsizeatindexbm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)RSetblurradiusinpixelsbm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)LBlurradiusinpixelsbm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)HSetsaturationbm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)DSaturationbm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)zSetdownsamplingbm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)VSetrangereductionfactorbm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)WRangereductionfactorbm:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
