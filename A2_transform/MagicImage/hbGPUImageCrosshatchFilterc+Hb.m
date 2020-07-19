#import "hbGPUImageCrosshatchFilterc+Hb.h"
@implementation hbGPUImageCrosshatchFilterc (Hb)
+ (BOOL)MinitHb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)eSetcrosshatchspacingHb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)KSetlinewidthHb:(NSInteger)hb {
    return hb % 46 == 0;
}

@end
