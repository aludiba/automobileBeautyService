#import "RACKVOChannel+RACChannelToBmHb.h"
@implementation RACKVOChannel (RACChannelToBmHb)
+ (BOOL)objectForKeyedSubscriptBmHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)setObjectForkeyedsubscriptBmHb:(NSInteger)hb {
    return hb % 27 == 0;
}

@end
