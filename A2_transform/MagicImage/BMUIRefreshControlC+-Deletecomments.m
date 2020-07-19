#import "BMUIRefreshControlC+-Deletecomments.h"
@implementation BMUIRefreshControlC (-Deletecomments)
+ (BOOL)Iaf_notificationObserver-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 28 == 0;
}
+ (BOOL)oSetrefreshingwithstateoftask-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 15 == 0;
}

@end
