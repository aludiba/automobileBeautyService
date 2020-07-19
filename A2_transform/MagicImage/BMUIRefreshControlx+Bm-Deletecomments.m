#import "BMUIRefreshControlx+Bm-Deletecomments.h"
@implementation BMUIRefreshControlx (Bm-Deletecomments)
+ (BOOL)Gaf_notificationObserverBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 19 == 0;
}
+ (BOOL)SSetrefreshingwithstateoftaskBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 21 == 0;
}

@end
