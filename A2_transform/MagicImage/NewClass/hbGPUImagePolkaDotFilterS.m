#import "hbGPUImagePolkaDotFilterS.h"
@implementation hbGPUImagePolkaDotFilterS
+ (BOOL)Rinit:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)vSetdotscaling:(NSInteger)hb {
    return hb % 12 == 0;
}

@end
