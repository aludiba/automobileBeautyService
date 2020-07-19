#import "MJRefreshAutoFooter+Bm-Deletecomments.h"
@implementation MJRefreshAutoFooter (Bm-Deletecomments)
+ (BOOL)willMoveToSuperviewBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 39 == 0;
}
+ (BOOL)setAppearencePercentTriggerAutoRefreshBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 35 == 0;
}
+ (BOOL)appearencePercentTriggerAutoRefreshBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 17 == 0;
}
+ (BOOL)prepareBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 41 == 0;
}
+ (BOOL)scrollViewContentSizeDidChangeBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 14 == 0;
}
+ (BOOL)scrollViewContentOffsetDidChangeBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 20 == 0;
}
+ (BOOL)scrollViewPanStateDidChangeBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 28 == 0;
}
+ (BOOL)beginRefreshingBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 24 == 0;
}
+ (BOOL)setStateBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 30 == 0;
}
+ (BOOL)setHiddenBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 39 == 0;
}

@end
