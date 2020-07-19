#import "BMRACMulticastConnections+BmBm-Deletecomments.h"
@implementation BMRACMulticastConnections (BmBm-Deletecomments)
+ (BOOL)eInitwithsourcesignalpSubjectBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 5 == 0;
}
+ (BOOL)sconnectBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 11 == 0;
}
+ (BOOL)WautoconnectBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 6 == 0;
}

@end
