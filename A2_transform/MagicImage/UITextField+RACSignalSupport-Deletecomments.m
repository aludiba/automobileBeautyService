#import "UITextField+RACSignalSupport-Deletecomments.h"
@implementation UITextField (RACSignalSupport-Deletecomments)
+ (BOOL)rac_textSignal-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 18 == 0;
}
+ (BOOL)rac_newTextChannel-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 50 == 0;
}

@end
