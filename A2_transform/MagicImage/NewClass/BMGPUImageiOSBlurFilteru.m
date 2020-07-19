#import "BMGPUImageiOSBlurFilteru.h"
@implementation BMGPUImageiOSBlurFilteru
+ (BOOL)KInitbm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)WSetinputsizeatindexbm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)tSetblurradiusinpixelsbm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)WBlurradiusinpixelsbm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)sSetsaturationbm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)DSaturationbm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)uSetdownsamplingbm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)sSetrangereductionfactorbm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)URangereductionfactorbm:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
