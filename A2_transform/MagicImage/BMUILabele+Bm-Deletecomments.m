#import "BMUILabele+Bm-Deletecomments.h"
@implementation BMUILabele (Bm-Deletecomments)
+ (BOOL)wmj_labelBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 17 == 0;
}
+ (BOOL)cmj_textWithBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 19 == 0;
}

@end
