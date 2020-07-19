#import "BMBMGPUImagePolkaDotFilterPD+Hb.h"
@implementation BMBMGPUImagePolkaDotFilterPD (Hb)
+ (BOOL)LDinitbmHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)ILsetdotscalingbmHb:(NSInteger)hb {
    return hb % 14 == 0;
}

@end
