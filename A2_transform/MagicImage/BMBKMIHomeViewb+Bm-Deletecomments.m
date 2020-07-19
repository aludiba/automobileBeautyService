#import "BMBKMIHomeViewb+Bm-Deletecomments.h"
@implementation BMBKMIHomeViewb (Bm-Deletecomments)
+ (BOOL)eInitwithframeBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 44 == 0;
}
+ (BOOL)IBktapBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 12 == 0;
}

@end
