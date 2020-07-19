#import "RACKVOChannel+RACChannelToHb.h"
@implementation RACKVOChannel (RACChannelToHb)
+ (BOOL)objectForKeyedSubscriptHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)setObjectForkeyedsubscriptHb:(NSInteger)hb {
    return hb % 47 == 0;
}

@end
