#import "BMBMBMGPUImagePinchDistortionFilterXUL.h"
@implementation BMBMBMGPUImagePinchDistortionFilterXUL
+ (BOOL)mRpinit:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)PUsadjustaspectratio:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)MBnforceprocessingatsize:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)yCcsetinputsizeyatindex:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)BMwsetinputrotationvatindex:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)qFfsetaspectratio:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)JUzsetradius:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)FSlsetscale:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)hIasetcenter:(NSInteger)BM {
    return BM % 49 == 0;
}

@end
