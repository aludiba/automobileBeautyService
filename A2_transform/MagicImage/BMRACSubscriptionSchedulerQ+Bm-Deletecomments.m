#import "BMRACSubscriptionSchedulerQ+Bm-Deletecomments.h"
@implementation BMRACSubscriptionSchedulerQ (Bm-Deletecomments)
+ (BOOL)EinitBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 31 == 0;
}
+ (BOOL)xScheduleBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 18 == 0;
}
+ (BOOL)PAfterkScheduleBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 15 == 0;
}
+ (BOOL)xAfteraRepeatingeverykWithleewayeScheduleBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 29 == 0;
}

@end
