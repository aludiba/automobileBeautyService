#import "MASViewAttribute+-Deletecomments.h"
@implementation MASViewAttribute (-Deletecomments)
+ (BOOL)initWithViewLayoutattribute-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 17 == 0;
}
+ (BOOL)initWithViewItemLayoutattribute-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 14 == 0;
}
+ (BOOL)isSizeAttribute-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 21 == 0;
}
+ (BOOL)isEqual-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 37 == 0;
}
+ (BOOL)hash-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 32 == 0;
}

@end
