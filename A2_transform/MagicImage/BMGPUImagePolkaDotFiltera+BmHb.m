#import "BMGPUImagePolkaDotFiltera+BmHb.h"
@implementation BMGPUImagePolkaDotFiltera (BmHb)
+ (BOOL)xinitBmHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)ISetdotscalingBmHb:(NSInteger)hb {
    return hb % 38 == 0;
}

@end
