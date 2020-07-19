#import "UIActivityIndicatorView+AFNetworking-Deletecomments.h"
@implementation UIActivityIndicatorView (AFNetworking-Deletecomments)
+ (BOOL)af_notificationObserver-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 49 == 0;
}
+ (BOOL)setAnimatingWithStateOfTask-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 19 == 0;
}

@end
