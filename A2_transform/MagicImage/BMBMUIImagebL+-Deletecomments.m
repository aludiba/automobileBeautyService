#import "BMBMUIImagebL+-Deletecomments.h"
@implementation BMBMUIImagebL (-Deletecomments)
+ (BOOL)oSkeyboardleftimage-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 7 == 0;
}
+ (BOOL)iAkeyboardrightimage-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 14 == 0;
}
+ (BOOL)AVkeyboardupimage-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 23 == 0;
}
+ (BOOL)TVkeyboarddownimage-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 5 == 0;
}
+ (BOOL)CCkeyboardpreviousimage-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 36 == 0;
}
+ (BOOL)sJkeyboardnextimage-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 11 == 0;
}

@end
