#import "hbGPUImageMotionBlurFilterS.h"
@implementation hbGPUImageMotionBlurFilterS
+ (BOOL)winit:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)NSetinputsizeJAtindex:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)ErecalculateTexelOffsets:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)vSetinputrotationXAtindex:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)ASetblurangle:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)ZSetblursize:(NSInteger)hb {
    return hb % 31 == 0;
}

@end
