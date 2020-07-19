#import "BMBMGPUImageMotionDetectortY.h"
@implementation BMBMGPUImageMotionDetectortY
+ (BOOL)fFinit:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)HKsetlowpassfilterstrength:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)HIlowpassfilterstrength:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
