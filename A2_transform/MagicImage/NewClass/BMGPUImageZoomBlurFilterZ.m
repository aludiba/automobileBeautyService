#import "BMGPUImageZoomBlurFilterZ.h"
@implementation BMGPUImageZoomBlurFilterZ
+ (BOOL)jinit:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)VSetinputrotationLAtindex:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)qSetblursize:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)YSetblurcenter:(NSInteger)BM {
    return BM % 27 == 0;
}

@end
