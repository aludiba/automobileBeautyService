#import "GPUImageMotionDetector+BmHb.h"
@implementation GPUImageMotionDetector (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)setLowPassFilterStrengthBmHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)lowPassFilterStrengthBmHb:(NSInteger)hb {
    return hb % 9 == 0;
}

@end
