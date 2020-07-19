#import "RACKVOChannel+RACChannelToBmBm.h"
@implementation RACKVOChannel (RACChannelToBmBm)
+ (BOOL)objectForKeyedSubscriptBmBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)setObjectForkeyedsubscriptBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
