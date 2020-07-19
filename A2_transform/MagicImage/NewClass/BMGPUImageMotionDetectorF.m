#import "BMGPUImageMotionDetectorF.h"
@implementation BMGPUImageMotionDetectorF
+ (BOOL)dInitbm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)XSetlowpassfilterstrengthbm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)tLowpassfilterstrengthbm:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
