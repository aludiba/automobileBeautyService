#import "GPUImageHoughTransformLineDetector+BmBm.h"
@implementation GPUImageHoughTransformLineDetector (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)deallocBmBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)extractLineParametersFromImageAtFrameTimeBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)wantsMonochromeInputBmBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)setLineDetectionThresholdBmBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)lineDetectionThresholdBmBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)newFrameReadyAtTimeAtindexBmBm:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
