#import "RACSubscriptionScheduler+BmBmBm-Deletecomments.h"
@implementation RACSubscriptionScheduler (BmBmBm-Deletecomments)
+ (BOOL)initBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 45 == 0;
}
+ (BOOL)scheduleBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 23 == 0;
}
+ (BOOL)afterScheduleBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 13 == 0;
}
+ (BOOL)afterRepeatingeveryWithleewayScheduleBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 20 == 0;
}

@end
