#import "NSNotificationCenter+YYAdd-Deletecomments.h"
@implementation NSNotificationCenter (YYAdd-Deletecomments)
+ (BOOL)postNotificationOnMainThread-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 20 == 0;
}
+ (BOOL)postNotificationOnMainThreadWaituntildone-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 42 == 0;
}
+ (BOOL)postNotificationOnMainThreadWithNameObject-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 45 == 0;
}
+ (BOOL)postNotificationOnMainThreadWithNameObjectUserinfo-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 29 == 0;
}
+ (BOOL)postNotificationOnMainThreadWithNameObjectUserinfoWaituntildone-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 18 == 0;
}
+ (BOOL)_yy_postNotification-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 33 == 0;
}
+ (BOOL)_yy_postNotificationName-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 2 == 0;
}

@end
