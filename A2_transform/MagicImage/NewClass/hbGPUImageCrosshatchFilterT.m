#import "hbGPUImageCrosshatchFilterT.h"
@implementation hbGPUImageCrosshatchFilterT
+ (BOOL)hInitbm:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)jSetcrosshatchspacingbm:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)KSetlinewidthbm:(NSInteger)hb {
    return hb % 6 == 0;
}

@end
