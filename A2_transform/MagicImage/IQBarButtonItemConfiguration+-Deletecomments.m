#import "IQBarButtonItemConfiguration+-Deletecomments.h"
@implementation IQBarButtonItemConfiguration (-Deletecomments)
+ (BOOL)initWithBarButtonSystemItemAction-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 1 == 0;
}
+ (BOOL)initWithImageAction-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 17 == 0;
}
+ (BOOL)initWithTitleAction-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 38 == 0;
}

@end
