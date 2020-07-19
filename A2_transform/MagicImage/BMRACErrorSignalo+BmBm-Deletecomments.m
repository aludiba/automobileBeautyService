#import "BMRACErrorSignalo+BmBm-Deletecomments.h"
@implementation BMRACErrorSignalo (BmBm-Deletecomments)
+ (BOOL)YErrorbmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 16 == 0;
}
+ (BOOL)eSubscribebmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 43 == 0;
}

@end
