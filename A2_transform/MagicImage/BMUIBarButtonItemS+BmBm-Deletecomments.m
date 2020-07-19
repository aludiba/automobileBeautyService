#import "BMUIBarButtonItemS+BmBm-Deletecomments.h"
@implementation BMUIBarButtonItemS (BmBm-Deletecomments)
+ (BOOL)irac_commandBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 46 == 0;
}
+ (BOOL)vSetrac_CommandBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 47 == 0;
}
+ (BOOL)brac_hijackActionAndTargetIfNeededBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 19 == 0;
}
+ (BOOL)RRac_CommandperformactionBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 46 == 0;
}

@end
