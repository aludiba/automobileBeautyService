#import "MJRefreshFooter+Bm-Deletecomments.h"
@implementation MJRefreshFooter (Bm-Deletecomments)
+ (BOOL)footerWithRefreshingBlockBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 21 == 0;
}
+ (BOOL)footerWithRefreshingTargetRefreshingactionBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 12 == 0;
}
+ (BOOL)prepareBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 29 == 0;
}
+ (BOOL)willMoveToSuperviewBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 26 == 0;
}
+ (BOOL)endRefreshingWithNoMoreDataBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 33 == 0;
}
+ (BOOL)noticeNoMoreDataBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 16 == 0;
}
+ (BOOL)resetNoMoreDataBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 47 == 0;
}
+ (BOOL)setAutomaticallyHiddenBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 35 == 0;
}

@end
