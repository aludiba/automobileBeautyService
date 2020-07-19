#import "hbBMGPUImageMotionBlurFilterFo.h"
@implementation hbBMGPUImageMotionBlurFilterFo
+ (BOOL)DBinitbmbm:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)XFsetinputsizeatindexbmbm:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)yLrecalculatetexeloffsetsbmbm:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)VSsetinputrotationatindexbmbm:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)EEsetbluranglebmbm:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)TNsetblursizebmbm:(NSInteger)hb {
    return hb % 46 == 0;
}

@end
