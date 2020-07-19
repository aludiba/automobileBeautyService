#import "hbGPUImageBrightnessFilterW.h"
@implementation hbGPUImageBrightnessFilterW
+ (BOOL)oinit:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)CSetbrightness:(NSInteger)hb {
    return hb % 9 == 0;
}

@end
