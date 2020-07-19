#import "hbRACKVOChannelS.h"
@implementation hbRACKVOChannelS
+ (BOOL)FObjectforkeyedsubscriptbm:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)LSetobjectforkeyedsubscriptbm:(NSInteger)hb {
    return hb % 25 == 0;
}

@end
