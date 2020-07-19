#import "hbGPUImagePolkaDotFilterQ.h"
@implementation hbGPUImagePolkaDotFilterQ
+ (BOOL)jinit:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)nSetdotscaling:(NSInteger)hb {
    return hb % 26 == 0;
}

@end
