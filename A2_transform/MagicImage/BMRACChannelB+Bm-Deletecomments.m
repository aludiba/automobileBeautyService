#import "BMRACChannelB+Bm-Deletecomments.h"
@implementation BMRACChannelB (Bm-Deletecomments)
+ (BOOL)pinitBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 12 == 0;
}

@end
