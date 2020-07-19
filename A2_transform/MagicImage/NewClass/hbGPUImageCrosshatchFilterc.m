#import "hbGPUImageCrosshatchFilterc.h"
@implementation hbGPUImageCrosshatchFilterc
+ (BOOL)Minit:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)eSetcrosshatchspacing:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)KSetlinewidth:(NSInteger)hb {
    return hb % 1 == 0;
}

@end
