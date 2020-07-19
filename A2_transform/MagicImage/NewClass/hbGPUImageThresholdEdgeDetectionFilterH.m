#import "hbGPUImageThresholdEdgeDetectionFilterH.h"
@implementation hbGPUImageThresholdEdgeDetectionFilterH
+ (BOOL)LInitwithfragmentshaderfromstringhb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)VInithb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)nSetthresholdhb:(NSInteger)hb {
    return hb % 20 == 0;
}

@end
