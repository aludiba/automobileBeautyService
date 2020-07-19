#import "hbBMGPUImageUnsharpMaskFilterPp.h"
@implementation hbBMGPUImageUnsharpMaskFilterPp
+ (BOOL)fIinitbm:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)LDsetblurradiusinpixelsbm:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)XOblurradiusinpixelsbm:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)IGsetintensitybm:(NSInteger)hb {
    return hb % 13 == 0;
}

@end
