#import "BMYCPresentationControllert+-Deletecomments.h"
@implementation BMYCPresentationControllert (-Deletecomments)
+ (BOOL)LcontainerViewWillLayoutSubviews-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 37 == 0;
}
+ (BOOL)UcoverView-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 14 == 0;
}
+ (BOOL)lcoverViewClick-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 40 == 0;
}

@end
