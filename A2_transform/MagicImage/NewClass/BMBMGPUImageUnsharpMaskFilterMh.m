#import "BMBMGPUImageUnsharpMaskFilterMh.h"
@implementation BMBMGPUImageUnsharpMaskFilterMh
+ (BOOL)vMinitbm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)pBsetblurradiusinpixelsbm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)MAblurradiusinpixelsbm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)cCsetintensitybm:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
