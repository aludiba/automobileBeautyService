#import "MJPropertyKey+Bm-Deletecomments.h"
@implementation MJPropertyKey (Bm-Deletecomments)
+ (BOOL)valueInObjectBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 26 == 0;
}

@end
