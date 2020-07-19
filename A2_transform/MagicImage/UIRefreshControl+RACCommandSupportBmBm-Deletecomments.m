#import "UIRefreshControl+RACCommandSupportBmBm-Deletecomments.h"
@implementation UIRefreshControl (RACCommandSupportBmBm-Deletecomments)
+ (BOOL)rac_commandBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 35 == 0;
}
+ (BOOL)setRac_commandBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 34 == 0;
}

@end
