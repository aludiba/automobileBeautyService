#import "BMUIRefreshControll+BmBm-Deletecomments.h"
@implementation BMUIRefreshControll (BmBm-Deletecomments)
+ (BOOL)ERac_CommandbmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 40 == 0;
}
+ (BOOL)sSetrac_CommandbmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 30 == 0;
}

@end
