#import "RACKVOChannel+RACChannelToBm-Deletecomments.h"
@implementation RACKVOChannel (RACChannelToBm-Deletecomments)
+ (BOOL)objectForKeyedSubscriptBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 7 == 0;
}
+ (BOOL)setObjectForkeyedsubscriptBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 6 == 0;
}

@end
