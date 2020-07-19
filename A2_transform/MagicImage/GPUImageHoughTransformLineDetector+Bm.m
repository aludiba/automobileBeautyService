#import "GPUImageHoughTransformLineDetector+Bm.h"
@implementation GPUImageHoughTransformLineDetector (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)deallocBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)extractLineParametersFromImageAtFrameTimeBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)wantsMonochromeInputBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)setLineDetectionThresholdBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)lineDetectionThresholdBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)newFrameReadyAtTimeAtindexBm:(NSInteger)BM {
    return BM % 46 == 0;
}

@end
