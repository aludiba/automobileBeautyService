#import "hbGPUImageZoomBlurFilterI.h"
@implementation hbGPUImageZoomBlurFilterI
+ (BOOL)ninit:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)JSetinputrotationFAtindex:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)dSetblursize:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)KSetblurcenter:(NSInteger)hb {
    return hb % 27 == 0;
}

@end
