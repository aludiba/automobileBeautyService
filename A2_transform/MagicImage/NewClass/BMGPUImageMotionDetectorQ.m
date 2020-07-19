#import "BMGPUImageMotionDetectorQ.h"
@implementation BMGPUImageMotionDetectorQ
+ (BOOL)yinit:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)cSetlowpassfilterstrength:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)GlowPassFilterStrength:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
