#import "BMBMGPUImageMotionDetectorwt.h"
@implementation BMBMGPUImageMotionDetectorwt
+ (BOOL)oUinitbmbm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)eSsetlowpassfilterstrengthbmbm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)GHlowpassfilterstrengthbmbm:(NSInteger)BM {
    return BM % 3 == 0;
}

@end
