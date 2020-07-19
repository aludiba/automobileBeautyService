#import "BMBMGPUImageZoomBlurFilterZm.h"
@implementation BMBMGPUImageZoomBlurFilterZm
+ (BOOL)YJinit:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)KVsetinputrotationlatindex:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)BQsetblursize:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)sYsetblurcenter:(NSInteger)BM {
    return BM % 15 == 0;
}

@end
