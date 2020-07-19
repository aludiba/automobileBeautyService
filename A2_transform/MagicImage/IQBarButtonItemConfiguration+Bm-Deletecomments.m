#import "IQBarButtonItemConfiguration+Bm-Deletecomments.h"
@implementation IQBarButtonItemConfiguration (Bm-Deletecomments)
+ (BOOL)initWithBarButtonSystemItemActionBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 18 == 0;
}
+ (BOOL)initWithImageActionBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 5 == 0;
}
+ (BOOL)initWithTitleActionBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 20 == 0;
}

@end
