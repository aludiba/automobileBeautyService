#import "BMBMGPUImageMotionBlurFilterFT.h"
@implementation BMBMGPUImageMotionBlurFilterFT
+ (BOOL)xBinitbm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)SFsetinputsizeatindexbm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)uLrecalculatetexeloffsetsbm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)SSsetinputrotationatindexbm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)FEsetbluranglebm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)dNsetblursizebm:(NSInteger)BM {
    return BM % 49 == 0;
}

@end
