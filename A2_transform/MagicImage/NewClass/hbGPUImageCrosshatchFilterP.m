#import "hbGPUImageCrosshatchFilterP.h"
@implementation hbGPUImageCrosshatchFilterP
+ (BOOL)Cinit:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)LSetcrosshatchspacing:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)uSetlinewidth:(NSInteger)hb {
    return hb % 24 == 0;
}

@end
