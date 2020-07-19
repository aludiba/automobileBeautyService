#import "hbGPUImageThresholdEdgeDetectionFilterm.h"
@implementation hbGPUImageThresholdEdgeDetectionFilterm
+ (BOOL)kInitwithfragmentshaderfromstringhb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)cInithb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)vSetthresholdhb:(NSInteger)hb {
    return hb % 24 == 0;
}

@end
