#import "BMGPUImageiOSBlurFilteru+Bm.h"
@implementation BMGPUImageiOSBlurFilteru (Bm)
+ (BOOL)KInitbmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)WSetinputsizeatindexbmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)tSetblurradiusinpixelsbmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)WBlurradiusinpixelsbmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)sSetsaturationbmBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)DSaturationbmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)uSetdownsamplingbmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)sSetrangereductionfactorbmBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)URangereductionfactorbmBm:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
