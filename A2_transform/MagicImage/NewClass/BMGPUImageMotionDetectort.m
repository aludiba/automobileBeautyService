#import "BMGPUImageMotionDetectort.h"
@implementation BMGPUImageMotionDetectort
+ (BOOL)finit:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)kSetlowpassfilterstrength:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)IlowPassFilterStrength:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
