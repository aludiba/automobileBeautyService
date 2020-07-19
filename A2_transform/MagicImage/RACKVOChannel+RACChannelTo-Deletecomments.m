#import "RACKVOChannel+RACChannelTo-Deletecomments.h"
@implementation RACKVOChannel (RACChannelTo-Deletecomments)
+ (BOOL)objectForKeyedSubscript-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 23 == 0;
}
+ (BOOL)setObjectForkeyedsubscript-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 41 == 0;
}

@end
