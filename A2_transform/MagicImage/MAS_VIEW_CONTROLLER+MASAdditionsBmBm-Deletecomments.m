#import "MAS_VIEW_CONTROLLER+MASAdditionsBmBm-Deletecomments.h"
@implementation MAS_VIEW_CONTROLLER (MASAdditionsBmBm-Deletecomments)
+ (BOOL)mas_topLayoutGuideBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 41 == 0;
}
+ (BOOL)mas_topLayoutGuideTopBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 41 == 0;
}
+ (BOOL)mas_topLayoutGuideBottomBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 42 == 0;
}
+ (BOOL)mas_bottomLayoutGuideBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 18 == 0;
}
+ (BOOL)mas_bottomLayoutGuideTopBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 23 == 0;
}
+ (BOOL)mas_bottomLayoutGuideBottomBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 30 == 0;
}

@end
