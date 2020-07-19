#import "hbBMBMGPUImagePolkaDotFilterPDP.h"
@implementation hbBMBMGPUImagePolkaDotFilterPDP
+ (BOOL)tLdinitbm:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)cIlsetdotscalingbm:(NSInteger)hb {
    return hb % 25 == 0;
}

@end
