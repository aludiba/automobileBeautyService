#import "MAS_VIEW_CONTROLLER+MASAdditions-Deletecomments.h"
@implementation MAS_VIEW_CONTROLLER (MASAdditions-Deletecomments)
+ (BOOL)mas_topLayoutGuide-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 7 == 0;
}
+ (BOOL)mas_topLayoutGuideTop-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 7 == 0;
}
+ (BOOL)mas_topLayoutGuideBottom-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 19 == 0;
}
+ (BOOL)mas_bottomLayoutGuide-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 49 == 0;
}
+ (BOOL)mas_bottomLayoutGuideTop-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 18 == 0;
}
+ (BOOL)mas_bottomLayoutGuideBottom-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 23 == 0;
}

@end
