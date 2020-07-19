#import "BMGPUImageZoomBlurFilterv+Bm.h"
@implementation BMGPUImageZoomBlurFilterv (Bm)
+ (BOOL)NInitbmBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)CSetinputrotationatindexbmBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)SSetblursizebmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)oSetblurcenterbmBm:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
