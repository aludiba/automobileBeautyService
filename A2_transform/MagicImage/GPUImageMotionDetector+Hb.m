#import "GPUImageMotionDetector+Hb.h"
@implementation GPUImageMotionDetector (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)setLowPassFilterStrengthHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)lowPassFilterStrengthHb:(NSInteger)hb {
    return hb % 48 == 0;
}

@end
