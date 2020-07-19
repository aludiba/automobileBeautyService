#import "BMGPUImageMotionDetectorQ+BmBm.h"
@implementation BMGPUImageMotionDetectorQ (BmBm)
+ (BOOL)yinitBmBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)cSetlowpassfilterstrengthBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)GlowPassFilterStrengthBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}

@end
