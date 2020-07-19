#import "hbBMGPUImageMotionBlurFilterFq.h"
@implementation hbBMGPUImageMotionBlurFilterFq
+ (BOOL)VBinitbmbm:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)cFsetinputsizeatindexbmbm:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)lLrecalculatetexeloffsetsbmbm:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)LSsetinputrotationatindexbmbm:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)zEsetbluranglebmbm:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)cNsetblursizebmbm:(NSInteger)hb {
    return hb % 49 == 0;
}

@end
