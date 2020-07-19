#import "UIRefreshControl+AFNetworking-Deletecomments.h"
@implementation UIRefreshControl (AFNetworking-Deletecomments)
+ (BOOL)af_notificationObserver-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 39 == 0;
}
+ (BOOL)setRefreshingWithStateOfTask-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 35 == 0;
}

@end
