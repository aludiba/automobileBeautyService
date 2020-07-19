#import "BMGPUImageZoomBlurFilterY.h"
@implementation BMGPUImageZoomBlurFilterY
+ (BOOL)YInitbm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)eSetinputrotationatindexbm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)WSetblursizebm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)vSetblurcenterbm:(NSInteger)BM {
    return BM % 20 == 0;
}

@end
