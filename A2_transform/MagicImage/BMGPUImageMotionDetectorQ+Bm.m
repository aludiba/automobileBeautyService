#import "BMGPUImageMotionDetectorQ+Bm.h"
@implementation BMGPUImageMotionDetectorQ (Bm)
+ (BOOL)yinitBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)cSetlowpassfilterstrengthBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)GlowPassFilterStrengthBm:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
