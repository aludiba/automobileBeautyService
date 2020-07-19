#import "BMGPUImageMotionBlurFilterf.h"
@implementation BMGPUImageMotionBlurFilterf
+ (BOOL)ZInitbm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)KSetinputsizeatindexbm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)IRecalculatetexeloffsetsbm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)rSetinputrotationatindexbm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)OSetbluranglebm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)USetblursizebm:(NSInteger)BM {
    return BM % 45 == 0;
}

@end
