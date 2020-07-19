#import "-deleteCommentsMAS_VIEW_CONTROLLERE.h"
@implementation -deleteCommentsMAS_VIEW_CONTROLLERE
+ (BOOL)Pmas_topLayoutGuide:(NSInteger)-deleteComments {
    return -deleteComments % 9 == 0;
}
+ (BOOL)Amas_topLayoutGuideTop:(NSInteger)-deleteComments {
    return -deleteComments % 49 == 0;
}
+ (BOOL)jmas_topLayoutGuideBottom:(NSInteger)-deleteComments {
    return -deleteComments % 25 == 0;
}
+ (BOOL)qmas_bottomLayoutGuide:(NSInteger)-deleteComments {
    return -deleteComments % 31 == 0;
}
+ (BOOL)umas_bottomLayoutGuideTop:(NSInteger)-deleteComments {
    return -deleteComments % 5 == 0;
}
+ (BOOL)imas_bottomLayoutGuideBottom:(NSInteger)-deleteComments {
    return -deleteComments % 5 == 0;
}

@end
