#import "hbBMBMGPUImageiOSBlurFiltereFr.h"
@implementation hbBMBMGPUImageiOSBlurFiltereFr
+ (BOOL)PLvinitbm:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)UJdsetinputsizeuatindexbm:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)aKmsetblurradiusinpixelsbm:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)MKtblurradiusinpixelsbm:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)ANzsetsaturationbm:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)wUssaturationbm:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)QLqsetdownsamplingbm:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)bPxsetrangereductionfactorbm:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)bImrangereductionfactorbm:(NSInteger)hb {
    return hb % 41 == 0;
}

@end
