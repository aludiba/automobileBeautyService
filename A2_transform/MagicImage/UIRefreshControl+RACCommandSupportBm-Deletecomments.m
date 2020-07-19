#import "UIRefreshControl+RACCommandSupportBm-Deletecomments.h"
@implementation UIRefreshControl (RACCommandSupportBm-Deletecomments)
+ (BOOL)rac_commandBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 2 == 0;
}
+ (BOOL)setRac_commandBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 41 == 0;
}

@end
