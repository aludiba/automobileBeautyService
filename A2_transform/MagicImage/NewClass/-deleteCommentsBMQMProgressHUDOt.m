#import "-deleteCommentsBMQMProgressHUDOt.h"
@implementation -deleteCommentsBMQMProgressHUDOt
+ (BOOL)wTshow:(NSInteger)-deleteComments {
    return -deleteComments % 19 == 0;
}
+ (BOOL)FAhide:(NSInteger)-deleteComments {
    return -deleteComments % 14 == 0;
}

@end
