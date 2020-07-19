#import "hbBMGPUImageAlphaBlendFiltersX.h"
@implementation hbBMGPUImageAlphaBlendFiltersX
+ (BOOL)PNinitbm:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)GSsetmixbm:(NSInteger)hb {
    return hb % 7 == 0;
}

@end
