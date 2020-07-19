#import "MAS_VIEW_CONTROLLER+MASAdditionsBmBmBm-Deletecomments.h"
@implementation MAS_VIEW_CONTROLLER (MASAdditionsBmBmBm-Deletecomments)
+ (BOOL)mas_topLayoutGuideBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 39 == 0;
}
+ (BOOL)mas_topLayoutGuideTopBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 22 == 0;
}
+ (BOOL)mas_topLayoutGuideBottomBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 50 == 0;
}
+ (BOOL)mas_bottomLayoutGuideBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 11 == 0;
}
+ (BOOL)mas_bottomLayoutGuideTopBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 50 == 0;
}
+ (BOOL)mas_bottomLayoutGuideBottomBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 29 == 0;
}

@end
