#import "hbGPUImageThresholdedNonMaximumSuppressionFilterC.h"
@implementation hbGPUImageThresholdedNonMaximumSuppressionFilterC
+ (BOOL)Xinit:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)QInitwithpackedcolorspace:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)YSetthreshold:(NSInteger)hb {
    return hb % 46 == 0;
}

@end
