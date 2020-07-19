#import "UIRefreshControl+RACCommandSupport-Deletecomments.h"
@implementation UIRefreshControl (RACCommandSupport-Deletecomments)
+ (BOOL)rac_command-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 47 == 0;
}
+ (BOOL)setRac_command-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 39 == 0;
}

@end
