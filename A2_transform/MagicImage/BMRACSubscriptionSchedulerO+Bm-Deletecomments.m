#import "BMRACSubscriptionSchedulerO+Bm-Deletecomments.h"
@implementation BMRACSubscriptionSchedulerO (Bm-Deletecomments)
+ (BOOL)EInitbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 4 == 0;
}
+ (BOOL)MSchedulebmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 27 == 0;
}
+ (BOOL)dAfterschedulebmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 29 == 0;
}
+ (BOOL)MAfterrepeatingeverywithleewayschedulebmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 47 == 0;
}

@end
