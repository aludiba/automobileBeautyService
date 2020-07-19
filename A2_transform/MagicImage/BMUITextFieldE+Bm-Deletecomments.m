#import "BMUITextFieldE+Bm-Deletecomments.h"
@implementation BMUITextFieldE (Bm-Deletecomments)
+ (BOOL)jselectAllTextBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 21 == 0;
}
+ (BOOL)OSetselectedrangeBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 43 == 0;
}

@end
