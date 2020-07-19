#import "hbhbGPUImageCrosshatchFiltercw.h"
@implementation hbhbGPUImageCrosshatchFiltercw
+ (BOOL)cMinit:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)FEsetcrosshatchspacing:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)JKsetlinewidth:(NSInteger)hb {
    return hb % 47 == 0;
}

@end
