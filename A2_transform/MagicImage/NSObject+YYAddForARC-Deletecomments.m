#import "NSObject+YYAddForARC-Deletecomments.h"
@implementation NSObject (YYAddForARC-Deletecomments)
+ (BOOL)arcDebugRetain-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 9 == 0;
}
+ (BOOL)arcDebugRelease-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 18 == 0;
}
+ (BOOL)arcDebugAutorelease-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 18 == 0;
}
+ (BOOL)arcDebugRetainCount-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 28 == 0;
}

@end
