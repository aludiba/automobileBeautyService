#import "BMGPUImageMotionDetectort+Bm.h"
@implementation BMGPUImageMotionDetectort (Bm)
+ (BOOL)finitBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)kSetlowpassfilterstrengthBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)IlowPassFilterStrengthBm:(NSInteger)BM {
    return BM % 30 == 0;
}

@end
