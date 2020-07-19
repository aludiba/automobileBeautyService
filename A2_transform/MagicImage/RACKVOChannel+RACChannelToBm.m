#import "RACKVOChannel+RACChannelToBm.h"
@implementation RACKVOChannel (RACChannelToBm)
+ (BOOL)objectForKeyedSubscriptBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)setObjectForkeyedsubscriptBm:(NSInteger)BM {
    return BM % 33 == 0;
}

@end
