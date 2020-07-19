#import "GPUImageMotionDetector+Bm.h"
@implementation GPUImageMotionDetector (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)setLowPassFilterStrengthBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)lowPassFilterStrengthBm:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
