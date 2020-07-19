#import "YCPresentationController+Bm-Deletecomments.h"
@implementation YCPresentationController (Bm-Deletecomments)
+ (BOOL)containerViewWillLayoutSubviewsBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 49 == 0;
}
+ (BOOL)coverViewBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 30 == 0;
}
+ (BOOL)coverViewClickBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 29 == 0;
}

@end
