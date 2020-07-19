#import "hbGPUImageSaturationFilterD.h"
@implementation hbGPUImageSaturationFilterD
+ (BOOL)Vinit:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)ESetsaturation:(NSInteger)hb {
    return hb % 36 == 0;
}

@end
