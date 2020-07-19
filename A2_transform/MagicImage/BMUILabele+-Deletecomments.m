#import "BMUILabele+-Deletecomments.h"
@implementation BMUILabele (-Deletecomments)
+ (BOOL)wmj_label-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 27 == 0;
}
+ (BOOL)cmj_textWith-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 24 == 0;
}

@end
