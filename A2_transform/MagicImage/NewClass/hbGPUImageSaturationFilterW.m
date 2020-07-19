#import "hbGPUImageSaturationFilterW.h"
@implementation hbGPUImageSaturationFilterW
+ (BOOL)Linit:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)dSetsaturation:(NSInteger)hb {
    return hb % 29 == 0;
}

@end
