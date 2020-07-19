#import "hbGPUImageUnsharpMaskFilterG.h"
@implementation hbGPUImageUnsharpMaskFilterG
+ (BOOL)KInitbm:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)wSetblurradiusinpixelsbm:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)ZBlurradiusinpixelsbm:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)sSetintensitybm:(NSInteger)hb {
    return hb % 37 == 0;
}

@end
