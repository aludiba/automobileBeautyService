#import "BMGPUImageZoomBlurFilterv.h"
@implementation BMGPUImageZoomBlurFilterv
+ (BOOL)NInitbm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)CSetinputrotationatindexbm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)SSetblursizebm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)oSetblurcenterbm:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
