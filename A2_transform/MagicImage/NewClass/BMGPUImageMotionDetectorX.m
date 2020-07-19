#import "BMGPUImageMotionDetectorX.h"
@implementation BMGPUImageMotionDetectorX
+ (BOOL)kInitbmbm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)zSetlowpassfilterstrengthbmbm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)JLowpassfilterstrengthbmbm:(NSInteger)BM {
    return BM % 46 == 0;
}

@end
