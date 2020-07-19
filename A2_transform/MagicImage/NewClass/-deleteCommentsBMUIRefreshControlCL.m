#import "-deleteCommentsBMUIRefreshControlCL.h"
@implementation -deleteCommentsBMUIRefreshControlCL
+ (BOOL)OIaf_Notificationobserver:(NSInteger)-deleteComments {
    return -deleteComments % 37 == 0;
}
+ (BOOL)BOsetrefreshingwithstateoftask:(NSInteger)-deleteComments {
    return -deleteComments % 19 == 0;
}

@end
