#import "hbGPUImageMotionDetectord.h"
@implementation hbGPUImageMotionDetectord
+ (BOOL)sinit:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)gSetlowpassfilterstrength:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)GlowPassFilterStrength:(NSInteger)hb {
    return hb % 11 == 0;
}

@end
