#import "BMGPUImageMotionDetectorw.h"
@implementation BMGPUImageMotionDetectorw
+ (BOOL)uInitbm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)SSetlowpassfilterstrengthbm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)HLowpassfilterstrengthbm:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
