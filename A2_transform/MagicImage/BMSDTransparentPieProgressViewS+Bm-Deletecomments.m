#import "BMSDTransparentPieProgressViewS+Bm-Deletecomments.h"
@implementation BMSDTransparentPieProgressViewS (Bm-Deletecomments)
+ (BOOL)XInitwithframeBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 22 == 0;
}
+ (BOOL)VDrawrectBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 36 == 0;
}

@end
