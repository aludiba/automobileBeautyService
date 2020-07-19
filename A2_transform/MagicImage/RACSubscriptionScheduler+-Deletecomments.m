#import "RACSubscriptionScheduler+-Deletecomments.h"
@implementation RACSubscriptionScheduler (-Deletecomments)
+ (BOOL)init-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 43 == 0;
}
+ (BOOL)schedule-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 2 == 0;
}
+ (BOOL)afterSchedule-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 45 == 0;
}
+ (BOOL)afterRepeatingeveryWithleewaySchedule-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 27 == 0;
}

@end
