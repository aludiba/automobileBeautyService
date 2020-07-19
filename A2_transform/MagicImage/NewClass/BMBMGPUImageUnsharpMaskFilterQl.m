#import "BMBMGPUImageUnsharpMaskFilterQl.h"
@implementation BMBMGPUImageUnsharpMaskFilterQl
+ (BOOL)dBinit:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)pGsetblurradiusinpixels:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)kHblurradiusinpixels:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)rCsetintensity:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
