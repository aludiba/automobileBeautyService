#import "TOCropViewControllerTransitioning+-Deletecomments.h"
@implementation TOCropViewControllerTransitioning (-Deletecomments)
+ (BOOL)transitionDuration-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 10 == 0;
}
+ (BOOL)animateTransition-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 39 == 0;
}
+ (BOOL)reset-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 1 == 0;
}

@end
