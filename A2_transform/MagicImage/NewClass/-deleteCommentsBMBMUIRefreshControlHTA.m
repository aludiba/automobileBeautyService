#import "-deleteCommentsBMBMUIRefreshControlHTA.h"
@implementation -deleteCommentsBMBMUIRefreshControlHTA
+ (BOOL)WCtrac_Command:(NSInteger)-deleteComments {
    return -deleteComments % 6 == 0;
}
+ (BOOL)TNssetrac_Command:(NSInteger)-deleteComments {
    return -deleteComments % 5 == 0;
}

@end
