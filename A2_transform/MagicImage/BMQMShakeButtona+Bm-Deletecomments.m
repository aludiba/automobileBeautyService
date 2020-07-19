#import "BMQMShakeButtona+Bm-Deletecomments.h"
@implementation BMQMShakeButtona (Bm-Deletecomments)
+ (BOOL)cInitwithframeBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 25 == 0;
}
+ (BOOL)erunShakeAnimationBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 47 == 0;
}

@end
