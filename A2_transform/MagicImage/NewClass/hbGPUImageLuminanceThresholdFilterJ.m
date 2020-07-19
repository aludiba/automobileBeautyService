#import "hbGPUImageLuminanceThresholdFilterJ.h"
@implementation hbGPUImageLuminanceThresholdFilterJ
+ (BOOL)cinit:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)XSetthreshold:(NSInteger)hb {
    return hb % 39 == 0;
}

@end
