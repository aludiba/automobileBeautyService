#import "MJRefreshNormalHeader+Bm-Deletecomments.h"
@implementation MJRefreshNormalHeader (Bm-Deletecomments)
+ (BOOL)arrowViewBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 40 == 0;
}
+ (BOOL)loadingViewBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 11 == 0;
}
+ (BOOL)setActivityIndicatorViewStyleBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 22 == 0;
}
+ (BOOL)prepareBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 24 == 0;
}
+ (BOOL)placeSubviewsBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 39 == 0;
}
+ (BOOL)setStateBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 15 == 0;
}

@end
