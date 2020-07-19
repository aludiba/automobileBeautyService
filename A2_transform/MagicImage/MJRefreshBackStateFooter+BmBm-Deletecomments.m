#import "MJRefreshBackStateFooter+BmBm-Deletecomments.h"
@implementation MJRefreshBackStateFooter (BmBm-Deletecomments)
+ (BOOL)stateTitlesBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 30 == 0;
}
+ (BOOL)stateLabelBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 28 == 0;
}
+ (BOOL)setTitleForstateBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 50 == 0;
}
+ (BOOL)titleForStateBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 21 == 0;
}
+ (BOOL)prepareBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 50 == 0;
}
+ (BOOL)placeSubviewsBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 16 == 0;
}
+ (BOOL)setStateBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 3 == 0;
}

@end
