#import "hbGPUImageThresholdSketchFilterr.h"
@implementation hbGPUImageThresholdSketchFilterr
+ (BOOL)Binit:(NSInteger)hb {
    return hb % 32 == 0;
}

@end
