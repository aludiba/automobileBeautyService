#import "BMBMUIImagebm+-Deletecomments.h"
@implementation BMBMUIImagebm (-Deletecomments)
+ (BOOL)hSkeyboardleftimagebm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 29 == 0;
}
+ (BOOL)TAkeyboardrightimagebm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 41 == 0;
}
+ (BOOL)rVkeyboardupimagebm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 2 == 0;
}
+ (BOOL)RVkeyboarddownimagebm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 36 == 0;
}
+ (BOOL)XCkeyboardpreviousimagebm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 25 == 0;
}
+ (BOOL)BJkeyboardnextimagebm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 7 == 0;
}

@end
