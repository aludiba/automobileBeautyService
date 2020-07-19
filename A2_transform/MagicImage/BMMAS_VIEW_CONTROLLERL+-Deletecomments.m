#import "BMMAS_VIEW_CONTROLLERL+-Deletecomments.h"
@implementation BMMAS_VIEW_CONTROLLERL (-Deletecomments)
+ (BOOL)Qmas_topLayoutGuide-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 23 == 0;
}
+ (BOOL)Umas_topLayoutGuideTop-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 24 == 0;
}
+ (BOOL)Gmas_topLayoutGuideBottom-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 20 == 0;
}
+ (BOOL)kmas_bottomLayoutGuide-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 6 == 0;
}
+ (BOOL)Rmas_bottomLayoutGuideTop-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 47 == 0;
}
+ (BOOL)Dmas_bottomLayoutGuideBottom-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 33 == 0;
}

@end
