#import "BMBMGPUImageZoomBlurFilterJs.h"
@implementation BMBMGPUImageZoomBlurFilterJs
+ (BOOL)sRinit:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)AWsetinputrotationoatindex:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)pLsetblursize:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)KCsetblurcenter:(NSInteger)BM {
    return BM % 45 == 0;
}

@end
