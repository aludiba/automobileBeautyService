#import "BKMITagsDetailCell+Bm-Deletecomments.h"
@implementation BKMITagsDetailCell (Bm-Deletecomments)
+ (BOOL)initWithStyleReuseidentifierBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 11 == 0;
}
+ (BOOL)BKcopyBtnClickedBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 37 == 0;
}
+ (BOOL)setBKmodelBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 26 == 0;
}

@end
