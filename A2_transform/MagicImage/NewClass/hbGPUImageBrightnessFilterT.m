#import "hbGPUImageBrightnessFilterT.h"
@implementation hbGPUImageBrightnessFilterT
+ (BOOL)vinit:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)bSetbrightness:(NSInteger)hb {
    return hb % 31 == 0;
}

@end
