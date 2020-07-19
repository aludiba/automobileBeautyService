#import "BMRACSubscriptionSchedulerQ+BmBm-Deletecomments.h"
@implementation BMRACSubscriptionSchedulerQ (BmBm-Deletecomments)
+ (BOOL)EinitBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 41 == 0;
}
+ (BOOL)xScheduleBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 20 == 0;
}
+ (BOOL)PAfterkScheduleBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 9 == 0;
}
+ (BOOL)xAfteraRepeatingeverykWithleewayeScheduleBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 47 == 0;
}

@end
