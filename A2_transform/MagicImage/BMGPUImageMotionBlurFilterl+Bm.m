#import "BMGPUImageMotionBlurFilterl+Bm.h"
@implementation BMGPUImageMotionBlurFilterl (Bm)
+ (BOOL)EinitBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)sSetinputsizeFAtindexBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)hrecalculateTexelOffsetsBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)TSetinputrotationVAtindexBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)PSetblurangleBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)OSetblursizeBm:(NSInteger)BM {
    return BM % 38 == 0;
}

@end
