#import "BMBMGPUImagePinchDistortionFilterXL.h"
@implementation BMBMGPUImagePinchDistortionFilterXL
+ (BOOL)FPinit:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)HSadjustaspectratio:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)TNforceprocessingatsize:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)nCsetinputsizeyatindex:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)HWsetinputrotationvatindex:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)ZFsetaspectratio:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)QZsetradius:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)MLsetscale:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)tAsetcenter:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
