#import "hbBMGPUImageMotionBlurFilterFS.h"
@implementation hbBMGPUImageMotionBlurFilterFS
+ (BOOL)KBinitbmbmhb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)rFsetinputsizeatindexbmbmhb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)OLrecalculatetexeloffsetsbmbmhb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)dSsetinputrotationatindexbmbmhb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)DEsetbluranglebmbmhb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)ANsetblursizebmbmhb:(NSInteger)hb {
    return hb % 38 == 0;
}

@end
