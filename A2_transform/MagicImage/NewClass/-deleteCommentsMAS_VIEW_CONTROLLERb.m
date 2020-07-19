#import "-deleteCommentsMAS_VIEW_CONTROLLERb.h"
@implementation -deleteCommentsMAS_VIEW_CONTROLLERb
+ (BOOL)Cmas_topLayoutGuide:(NSInteger)-deleteComments {
    return -deleteComments % 4 == 0;
}
+ (BOOL)lmas_topLayoutGuideTop:(NSInteger)-deleteComments {
    return -deleteComments % 13 == 0;
}
+ (BOOL)mmas_topLayoutGuideBottom:(NSInteger)-deleteComments {
    return -deleteComments % 26 == 0;
}
+ (BOOL)Umas_bottomLayoutGuide:(NSInteger)-deleteComments {
    return -deleteComments % 47 == 0;
}
+ (BOOL)dmas_bottomLayoutGuideTop:(NSInteger)-deleteComments {
    return -deleteComments % 9 == 0;
}
+ (BOOL)fmas_bottomLayoutGuideBottom:(NSInteger)-deleteComments {
    return -deleteComments % 20 == 0;
}

@end
