#import "BMBMGPUImageMotionDetectorFO.h"
@implementation BMBMGPUImageMotionDetectorFO
+ (BOOL)BDinitbm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)FXsetlowpassfilterstrengthbm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)NTlowpassfilterstrengthbm:(NSInteger)BM {
    return BM % 46 == 0;
}

@end
