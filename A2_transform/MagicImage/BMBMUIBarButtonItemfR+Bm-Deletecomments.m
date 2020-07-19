#import "BMBMUIBarButtonItemfR+Bm-Deletecomments.h"
@implementation BMBMUIBarButtonItemfR (Bm-Deletecomments)
+ (BOOL)rYsetactionblockBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 43 == 0;
}
+ (BOOL)UActionblockBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 33 == 0;
}

@end
