#import "BMBMGPUImageZoomBlurFiltervM.h"
@implementation BMBMGPUImageZoomBlurFiltervM
+ (BOOL)ANinitbm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)pCsetinputrotationatindexbm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)BSsetblursizebm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)iOsetblurcenterbm:(NSInteger)BM {
    return BM % 7 == 0;
}

@end
