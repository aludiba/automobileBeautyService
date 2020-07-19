#import "BMGPUImageMotionBlurFilterD+Bm.h"
@implementation BMGPUImageMotionBlurFilterD (Bm)
+ (BOOL)ninitBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)jSetinputsizeZAtindexBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)BrecalculateTexelOffsetsBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)GSetinputrotationPAtindexBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)XSetblurangleBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)USetblursizeBm:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
