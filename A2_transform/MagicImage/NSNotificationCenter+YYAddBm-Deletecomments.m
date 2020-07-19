#import "NSNotificationCenter+YYAddBm-Deletecomments.h"
@implementation NSNotificationCenter (YYAddBm-Deletecomments)
+ (BOOL)postNotificationOnMainThreadBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 22 == 0;
}
+ (BOOL)postNotificationOnMainThreadWaituntildoneBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 50 == 0;
}
+ (BOOL)postNotificationOnMainThreadWithNameObjectBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 7 == 0;
}
+ (BOOL)postNotificationOnMainThreadWithNameObjectUserinfoBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 34 == 0;
}
+ (BOOL)postNotificationOnMainThreadWithNameObjectUserinfoWaituntildoneBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 12 == 0;
}
+ (BOOL)_yy_postNotificationBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 49 == 0;
}
+ (BOOL)_yy_postNotificationNameBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 39 == 0;
}

@end
