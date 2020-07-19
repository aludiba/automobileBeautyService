#import "UITextView+RACSignalSupport-Deletecomments.h"
@implementation UITextView (RACSignalSupport-Deletecomments)
+ (BOOL)rac_delegateProxy-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 35 == 0;
}
+ (BOOL)rac_textSignal-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 34 == 0;
}

@end
