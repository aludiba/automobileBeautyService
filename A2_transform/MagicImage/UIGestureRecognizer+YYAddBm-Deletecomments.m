#import "UIGestureRecognizer+YYAddBm-Deletecomments.h"
@implementation UIGestureRecognizer (YYAddBm-Deletecomments)
+ (BOOL)initWithActionBlockBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 8 == 0;
}
+ (BOOL)addActionBlockBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 23 == 0;
}
+ (BOOL)removeAllActionBlocksBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 32 == 0;
}
+ (BOOL)_yy_allUIGestureRecognizerBlockTargetsBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 24 == 0;
}

@end
