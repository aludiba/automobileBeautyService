#import "hbBMGPUImageExposureFilterOF.h"
@implementation hbBMGPUImageExposureFilterOF
+ (BOOL)PKinitbm:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)YIsetexposurebm:(NSInteger)hb {
    return hb % 16 == 0;
}

@end
