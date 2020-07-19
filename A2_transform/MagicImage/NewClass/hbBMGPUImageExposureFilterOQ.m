#import "hbBMGPUImageExposureFilterOQ.h"
@implementation hbBMGPUImageExposureFilterOQ
+ (BOOL)gKinitbm:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)PIsetexposurebm:(NSInteger)hb {
    return hb % 20 == 0;
}

@end
