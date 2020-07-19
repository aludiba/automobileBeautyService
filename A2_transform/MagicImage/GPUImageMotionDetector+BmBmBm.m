#import "GPUImageMotionDetector+BmBmBm.h"
@implementation GPUImageMotionDetector (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)setLowPassFilterStrengthBmBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)lowPassFilterStrengthBmBmBm:(NSInteger)BM {
    return BM % 18 == 0;
}

@end
