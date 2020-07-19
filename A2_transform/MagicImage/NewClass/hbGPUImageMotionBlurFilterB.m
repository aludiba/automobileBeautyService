#import "hbGPUImageMotionBlurFilterB.h"
@implementation hbGPUImageMotionBlurFilterB
+ (BOOL)winit:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)mSetinputsizeBAtindex:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)grecalculateTexelOffsets:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)VSetinputrotationSAtindex:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)CSetblurangle:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)lSetblursize:(NSInteger)hb {
    return hb % 15 == 0;
}

@end
