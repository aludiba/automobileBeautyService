#import "BMUIBarButtonItemT+Bm-Deletecomments.h"
@implementation BMUIBarButtonItemT (Bm-Deletecomments)
+ (BOOL)erac_commandBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 26 == 0;
}
+ (BOOL)MSetrac_CommandBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 29 == 0;
}
+ (BOOL)Qrac_hijackActionAndTargetIfNeededBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 16 == 0;
}
+ (BOOL)NRac_CommandperformactionBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 3 == 0;
}

@end
