#import "BMGPUImageMotionBlurFilterl.h"
@implementation BMGPUImageMotionBlurFilterl
+ (BOOL)Einit:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)sSetinputsizeFAtindex:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)hrecalculateTexelOffsets:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)TSetinputrotationVAtindex:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)PSetblurangle:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)OSetblursize:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
