#import "BMBMGPUImageMotionDetectorQi.h"
@implementation BMBMGPUImageMotionDetectorQi
+ (BOOL)jYinit:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)DCsetlowpassfilterstrength:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)CGlowpassfilterstrength:(NSInteger)BM {
    return BM % 10 == 0;
}

@end
