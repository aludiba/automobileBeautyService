#import "BMBMGPUImageZoomBlurFilterJz.h"
@implementation BMBMGPUImageZoomBlurFilterJz
+ (BOOL)WRinit:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)CWsetinputrotationoatindex:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)VLsetblursize:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)HCsetblurcenter:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
