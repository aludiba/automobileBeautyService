#import "BMGPUImageMotionBlurFilterl+BmBm.h"
@implementation BMGPUImageMotionBlurFilterl (BmBm)
+ (BOOL)EinitBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)sSetinputsizeFAtindexBmBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)hrecalculateTexelOffsetsBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)TSetinputrotationVAtindexBmBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)PSetblurangleBmBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)OSetblursizeBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}

@end
