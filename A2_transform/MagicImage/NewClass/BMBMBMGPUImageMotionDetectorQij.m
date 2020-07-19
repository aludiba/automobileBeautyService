#import "BMBMBMGPUImageMotionDetectorQij.h"
@implementation BMBMBMGPUImageMotionDetectorQij
+ (BOOL)LJyinit:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)RDcsetlowpassfilterstrength:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)eCglowpassfilterstrength:(NSInteger)BM {
    return BM % 37 == 0;
}

@end
