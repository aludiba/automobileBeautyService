#import "BMBMGPUImageHSBFilterCL.h"
@implementation BMBMGPUImageHSBFilterCL
+ (BOOL)YPinit:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)xKreset:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)cVrotatehue:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)kMadjustsaturation:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)vZadjustbrightness:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)kP_Updatecolormatrix:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)f0:(NSInteger)BM {
    return BM % 21 == 0;
}

@end
