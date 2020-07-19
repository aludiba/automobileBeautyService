#import "hbGPUImageUnsharpMaskFiltera.h"
@implementation hbGPUImageUnsharpMaskFiltera
+ (BOOL)lInitbmbm:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)gSetblurradiusinpixelsbmbm:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)UBlurradiusinpixelsbmbm:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)BSetintensitybmbm:(NSInteger)hb {
    return hb % 1 == 0;
}

@end
