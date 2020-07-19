#import "BMRACErrorSignalo+Bm-Deletecomments.h"
@implementation BMRACErrorSignalo (Bm-Deletecomments)
+ (BOOL)YErrorbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 44 == 0;
}
+ (BOOL)eSubscribebmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 9 == 0;
}

@end
