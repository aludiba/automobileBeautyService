#import "BMGPUImageiOSBlurFilterf+Bm.h"
@implementation BMGPUImageiOSBlurFilterf (Bm)
+ (BOOL)TInitbmBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)RSetinputsizeatindexbmBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)RSetblurradiusinpixelsbmBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)LBlurradiusinpixelsbmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)HSetsaturationbmBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)DSaturationbmBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)zSetdownsamplingbmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)VSetrangereductionfactorbmBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)WRangereductionfactorbmBm:(NSInteger)BM {
    return BM % 34 == 0;
}

@end
