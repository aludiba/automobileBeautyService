#import "MJRefreshHeader+Bm-Deletecomments.h"
@implementation MJRefreshHeader (Bm-Deletecomments)
+ (BOOL)headerWithRefreshingBlockBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 8 == 0;
}
+ (BOOL)headerWithRefreshingTargetRefreshingactionBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 49 == 0;
}
+ (BOOL)prepareBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 48 == 0;
}
+ (BOOL)placeSubviewsBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 18 == 0;
}
+ (BOOL)scrollViewContentOffsetDidChangeBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 27 == 0;
}
+ (BOOL)setStateBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 36 == 0;
}
+ (BOOL)lastUpdatedTimeBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 36 == 0;
}

@end
