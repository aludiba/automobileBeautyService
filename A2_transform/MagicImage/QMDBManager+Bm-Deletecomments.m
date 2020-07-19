#import "QMDBManager+Bm-Deletecomments.h"
@implementation QMDBManager (Bm-Deletecomments)
+ (BOOL)shareManagerBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 3 == 0;
}

@end
