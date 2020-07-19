#import "BMBMGPUImageSaturationBlendFilterKf.h"
@implementation BMBMGPUImageSaturationBlendFilterKf
+ (BOOL)kAinit:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
