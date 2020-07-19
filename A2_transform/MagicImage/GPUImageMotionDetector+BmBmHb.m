#import "GPUImageMotionDetector+BmBmHb.h"
@implementation GPUImageMotionDetector (BmBmHb)
+ (BOOL)initBmBmHb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)setLowPassFilterStrengthBmBmHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)lowPassFilterStrengthBmBmHb:(NSInteger)hb {
    return hb % 30 == 0;
}

@end
