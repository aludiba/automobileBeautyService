#import "BMBMGPUImageUnsharpMaskFilterQl+Bm.h"
@implementation BMBMGPUImageUnsharpMaskFilterQl (Bm)
+ (BOOL)dBinitBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)pGsetblurradiusinpixelsBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)kHblurradiusinpixelsBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)rCsetintensityBm:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
