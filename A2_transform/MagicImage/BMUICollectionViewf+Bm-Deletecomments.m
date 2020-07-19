#import "BMUICollectionViewf+Bm-Deletecomments.h"
@implementation BMUICollectionViewf (Bm-Deletecomments)
+ (BOOL)EloadBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 3 == 0;
}
+ (BOOL)Kmj_reloadDataBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 16 == 0;
}

@end
