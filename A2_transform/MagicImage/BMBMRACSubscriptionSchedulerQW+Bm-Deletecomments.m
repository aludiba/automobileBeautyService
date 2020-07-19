#import "BMBMRACSubscriptionSchedulerQW+Bm-Deletecomments.h"
@implementation BMBMRACSubscriptionSchedulerQW (Bm-Deletecomments)
+ (BOOL)hEinitbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 26 == 0;
}
+ (BOOL)pXschedulebmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 18 == 0;
}
+ (BOOL)BPafterkschedulebmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 11 == 0;
}
+ (BOOL)EXafterarepeatingeverykwithleewayeschedulebmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 9 == 0;
}

@end
