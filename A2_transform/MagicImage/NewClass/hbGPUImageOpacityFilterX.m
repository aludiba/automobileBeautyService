#import "hbGPUImageOpacityFilterX.h"
@implementation hbGPUImageOpacityFilterX
+ (BOOL)Cinit:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)BSetopacity:(NSInteger)hb {
    return hb % 50 == 0;
}

@end
