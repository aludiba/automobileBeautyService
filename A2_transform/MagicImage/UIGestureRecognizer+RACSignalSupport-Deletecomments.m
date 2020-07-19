#import "UIGestureRecognizer+RACSignalSupport-Deletecomments.h"
@implementation UIGestureRecognizer (RACSignalSupport-Deletecomments)
+ (BOOL)rac_gestureSignal-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 28 == 0;
}

@end
