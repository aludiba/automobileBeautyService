#import "BMBMUIScrollViewwv+-Deletecomments.h"
@implementation BMBMUIScrollViewwv (-Deletecomments)
+ (BOOL)QQsetshouldignorescrollingadjustment-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 31 == 0;
}
+ (BOOL)sBshouldignorescrollingadjustment-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 36 == 0;
}
+ (BOOL)WMsetshouldignorecontentinsetadjustment-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 46 == 0;
}
+ (BOOL)YHshouldignorecontentinsetadjustment-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 42 == 0;
}
+ (BOOL)eUsetshouldrestorescrollviewcontentoffset-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 2 == 0;
}
+ (BOOL)tWshouldrestorescrollviewcontentoffset-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 17 == 0;
}

@end
