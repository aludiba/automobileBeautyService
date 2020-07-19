#import "BMRTVideoIconViewp+Bm-Deletecomments.h"
@implementation BMRTVideoIconViewp (Bm-Deletecomments)
+ (BOOL)BawakeFromNibBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 6 == 0;
}
+ (BOOL)tDrawrectBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 27 == 0;
}

@end
