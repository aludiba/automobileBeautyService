#import "GPUImageMotionDetector+BmBm.h"
@implementation GPUImageMotionDetector (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)setLowPassFilterStrengthBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)lowPassFilterStrengthBmBm:(NSInteger)BM {
    return BM % 45 == 0;
}

@end
