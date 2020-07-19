#import "BMQMProgressHUDO+-Deletecomments.h"
@implementation BMQMProgressHUDO (-Deletecomments)
+ (BOOL)tshow-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 41 == 0;
}
+ (BOOL)ahide-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 31 == 0;
}

@end
