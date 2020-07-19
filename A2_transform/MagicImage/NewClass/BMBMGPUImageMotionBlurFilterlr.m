#import "BMBMGPUImageMotionBlurFilterlr.h"
@implementation BMBMGPUImageMotionBlurFilterlr
+ (BOOL)dEinitbm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)FSsetinputsizefatindexbm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)WHrecalculatetexeloffsetsbm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)xTsetinputrotationvatindexbm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)BPsetbluranglebm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)fOsetblursizebm:(NSInteger)BM {
    return BM % 19 == 0;
}

@end
