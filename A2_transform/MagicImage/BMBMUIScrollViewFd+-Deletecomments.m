#import "BMBMUIScrollViewFd+-Deletecomments.h"
@implementation BMBMUIScrollViewFd (-Deletecomments)
+ (BOOL)ELsetshouldignorescrollingadjustmentbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 9 == 0;
}
+ (BOOL)BXshouldignorescrollingadjustmentbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 36 == 0;
}
+ (BOOL)nEsetshouldignorecontentinsetadjustmentbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 25 == 0;
}
+ (BOOL)WIshouldignorecontentinsetadjustmentbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 33 == 0;
}
+ (BOOL)FCsetshouldrestorescrollviewcontentoffsetbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 47 == 0;
}
+ (BOOL)XBshouldrestorescrollviewcontentoffsetbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 39 == 0;
}

@end
