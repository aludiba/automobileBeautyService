#import "BMBMGPUImageMotionDetectorQv.h"
@implementation BMBMGPUImageMotionDetectorQv
+ (BOOL)oYinit:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)sCsetlowpassfilterstrength:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)MGlowpassfilterstrength:(NSInteger)BM {
    return BM % 49 == 0;
}

@end
