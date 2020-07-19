#import "BMBMGPUImagePinchDistortionFilterBJ.h"
@implementation BMBMGPUImagePinchDistortionFilterBJ
+ (BOOL)cZinit:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)uAadjustaspectratio:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)hMforceprocessingatsize:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)PIsetinputsizegatindex:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)KMsetinputrotationoatindex:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)BAsetaspectratio:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)sMsetradius:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)lJsetscale:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)ITsetcenter:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
