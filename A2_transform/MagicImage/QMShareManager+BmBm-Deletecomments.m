#import "QMShareManager+BmBm-Deletecomments.h"
@implementation QMShareManager (BmBm-Deletecomments)
+ (BOOL)shareThumbImageInviewcontrollerBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 24 == 0;
}

@end
