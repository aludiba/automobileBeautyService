#import "BMSDPieLoopProgressViewM+Bm-Deletecomments.h"
@implementation BMSDPieLoopProgressViewM (Bm-Deletecomments)
+ (BOOL)rInitwithframeBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 44 == 0;
}
+ (BOOL)jDrawrectBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 2 == 0;
}

@end
