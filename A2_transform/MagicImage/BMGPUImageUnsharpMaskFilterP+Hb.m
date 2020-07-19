#import "BMGPUImageUnsharpMaskFilterP+Hb.h"
@implementation BMGPUImageUnsharpMaskFilterP (Hb)
+ (BOOL)iInitbmHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)dSetblurradiusinpixelsbmHb:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)oBlurradiusinpixelsbmHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)gSetintensitybmHb:(NSInteger)hb {
    return hb % 49 == 0;
}

@end
