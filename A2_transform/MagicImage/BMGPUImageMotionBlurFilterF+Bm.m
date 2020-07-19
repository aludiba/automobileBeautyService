#import "BMGPUImageMotionBlurFilterF+Bm.h"
@implementation BMGPUImageMotionBlurFilterF (Bm)
+ (BOOL)BInitbmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)fSetinputsizeatindexbmBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)LRecalculatetexeloffsetsbmBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)SSetinputrotationatindexbmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)eSetbluranglebmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)NSetblursizebmBm:(NSInteger)BM {
    return BM % 34 == 0;
}

@end
