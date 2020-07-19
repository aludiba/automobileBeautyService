#import "hbhbGPUImageiOSBlurFiltervh.h"
@implementation hbhbGPUImageiOSBlurFiltervh
+ (BOOL)GPinit:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)wSsetinputsizeiatindex:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)iBsetblurradiusinpixels:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)vZblurradiusinpixels:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)xFsetsaturation:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)qUsaturation:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)wWsetdownsampling:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)CQsetrangereductionfactor:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)ERrangereductionfactor:(NSInteger)hb {
    return hb % 29 == 0;
}

@end
