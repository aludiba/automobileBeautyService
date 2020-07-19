#import "hbGPUImageHueFilterd.h"
@implementation hbGPUImageHueFilterd
+ (BOOL)Xinit:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)pSethue:(NSInteger)hb {
    return hb % 39 == 0;
}

@end
