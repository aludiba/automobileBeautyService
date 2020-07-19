#import "SDImageCacheConfig+BmBm-Deletecomments.h"
@implementation SDImageCacheConfig (BmBm-Deletecomments)
+ (BOOL)initBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 41 == 0;
}

@end
