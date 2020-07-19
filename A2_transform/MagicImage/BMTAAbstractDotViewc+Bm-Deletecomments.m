#import "BMTAAbstractDotViewc+Bm-Deletecomments.h"
@implementation BMTAAbstractDotViewc (Bm-Deletecomments)
+ (BOOL)pinitBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 25 == 0;
}
+ (BOOL)BChangeactivitystateBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 50 == 0;
}

@end
