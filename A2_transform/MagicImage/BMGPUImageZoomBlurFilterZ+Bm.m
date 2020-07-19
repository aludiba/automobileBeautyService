#import "BMGPUImageZoomBlurFilterZ+Bm.h"
@implementation BMGPUImageZoomBlurFilterZ (Bm)
+ (BOOL)jinitBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)VSetinputrotationLAtindexBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)qSetblursizeBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)YSetblurcenterBm:(NSInteger)BM {
    return BM % 29 == 0;
}

@end
