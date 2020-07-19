#import "hbGPUImageLuminanceThresholdFilterG.h"
@implementation hbGPUImageLuminanceThresholdFilterG
+ (BOOL)Oinit:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)lSetthreshold:(NSInteger)hb {
    return hb % 23 == 0;
}

@end
