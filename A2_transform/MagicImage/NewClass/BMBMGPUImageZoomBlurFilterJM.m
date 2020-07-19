#import "BMBMGPUImageZoomBlurFilterJM.h"
@implementation BMBMGPUImageZoomBlurFilterJM
+ (BOOL)DRinitbm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)oWsetinputrotationoatindexbm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)LLsetblursizebm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)iCsetblurcenterbm:(NSInteger)BM {
    return BM % 10 == 0;
}

@end
