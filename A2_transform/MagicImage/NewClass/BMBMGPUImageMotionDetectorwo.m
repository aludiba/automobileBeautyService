#import "BMBMGPUImageMotionDetectorwo.h"
@implementation BMBMGPUImageMotionDetectorwo
+ (BOOL)CUinitbm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)VSsetlowpassfilterstrengthbm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)qHlowpassfilterstrengthbm:(NSInteger)BM {
    return BM % 11 == 0;
}

@end
