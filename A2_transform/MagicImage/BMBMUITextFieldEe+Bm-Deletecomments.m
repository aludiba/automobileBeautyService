#import "BMBMUITextFieldEe+Bm-Deletecomments.h"
@implementation BMBMUITextFieldEe (Bm-Deletecomments)
+ (BOOL)OJselectalltextBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 41 == 0;
}
+ (BOOL)OOsetselectedrangeBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 12 == 0;
}

@end
