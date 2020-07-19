#import "GPUImageHoughTransformLineDetector+Hb.h"
@implementation GPUImageHoughTransformLineDetector (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)deallocHb:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)extractLineParametersFromImageAtFrameTimeHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)wantsMonochromeInputHb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)setLineDetectionThresholdHb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)lineDetectionThresholdHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)newFrameReadyAtTimeAtindexHb:(NSInteger)hb {
    return hb % 22 == 0;
}

@end
