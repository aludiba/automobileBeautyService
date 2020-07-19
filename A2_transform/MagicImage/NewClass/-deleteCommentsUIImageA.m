#import "-deleteCommentsUIImageA.h"
@implementation -deleteCommentsUIImageA
+ (BOOL)NkeyboardLeftImage:(NSInteger)-deleteComments {
    return -deleteComments % 2 == 0;
}
+ (BOOL)PkeyboardRightImage:(NSInteger)-deleteComments {
    return -deleteComments % 24 == 0;
}
+ (BOOL)kkeyboardUpImage:(NSInteger)-deleteComments {
    return -deleteComments % 8 == 0;
}
+ (BOOL)ykeyboardDownImage:(NSInteger)-deleteComments {
    return -deleteComments % 40 == 0;
}
+ (BOOL)jkeyboardPreviousImage:(NSInteger)-deleteComments {
    return -deleteComments % 41 == 0;
}
+ (BOOL)hkeyboardNextImage:(NSInteger)-deleteComments {
    return -deleteComments % 27 == 0;
}

@end
