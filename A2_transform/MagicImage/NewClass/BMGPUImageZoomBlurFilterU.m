#import "BMGPUImageZoomBlurFilterU.h"
@implementation BMGPUImageZoomBlurFilterU
+ (BOOL)yInitbmbm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)nSetinputrotationatindexbmbm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)NSetblursizebmbm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)zSetblurcenterbmbm:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
