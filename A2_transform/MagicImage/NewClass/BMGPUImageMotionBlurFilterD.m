#import "BMGPUImageMotionBlurFilterD.h"
@implementation BMGPUImageMotionBlurFilterD
+ (BOOL)ninit:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)jSetinputsizeZAtindex:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)BrecalculateTexelOffsets:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)GSetinputrotationPAtindex:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)XSetblurangle:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)USetblursize:(NSInteger)BM {
    return BM % 41 == 0;
}

@end
