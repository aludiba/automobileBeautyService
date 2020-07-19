#import "hbGPUImageZoomBlurFilterD.h"
@implementation hbGPUImageZoomBlurFilterD
+ (BOOL)ginit:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)ZSetinputrotationqAtindex:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)kSetblursize:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)RSetblurcenter:(NSInteger)hb {
    return hb % 31 == 0;
}

@end
