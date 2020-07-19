#import "BMSDPieLoopProgressViewm+BmBm-Deletecomments.h"
@implementation BMSDPieLoopProgressViewm (BmBm-Deletecomments)
+ (BOOL)jInitwithframeBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 4 == 0;
}
+ (BOOL)VDrawrectBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 24 == 0;
}

@end
