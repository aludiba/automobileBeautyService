#import "BMBMGPUImageUnsharpMaskFilterQy.h"
@implementation BMBMGPUImageUnsharpMaskFilterQy
+ (BOOL)bBinit:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)oGsetblurradiusinpixels:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)dHblurradiusinpixels:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)HCsetintensity:(NSInteger)BM {
    return BM % 44 == 0;
}

@end
