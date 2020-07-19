#import "UIGestureRecognizer+YYAdd-Deletecomments.h"
@implementation UIGestureRecognizer (YYAdd-Deletecomments)
+ (BOOL)initWithActionBlock-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 19 == 0;
}
+ (BOOL)addActionBlock-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 45 == 0;
}
+ (BOOL)removeAllActionBlocks-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 11 == 0;
}
+ (BOOL)_yy_allUIGestureRecognizerBlockTargets-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 14 == 0;
}

@end
