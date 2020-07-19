#import "BMRACCommandB+-Deletecomments.h"
@implementation BMRACCommandB (-Deletecomments)
+ (BOOL)zAllowsconcurrentexecutionbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 7 == 0;
}
+ (BOOL)dSetallowsconcurrentexecutionbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 13 == 0;
}
+ (BOOL)pInitbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 25 == 0;
}
+ (BOOL)GInitwithsignalblockbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 29 == 0;
}
+ (BOOL)ZDeallocbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 1 == 0;
}
+ (BOOL)EInitwithenabledsignalblockbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 38 == 0;
}
+ (BOOL)xExecutebm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 48 == 0;
}

@end
