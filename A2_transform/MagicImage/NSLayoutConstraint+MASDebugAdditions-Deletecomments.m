#import "NSLayoutConstraint+MASDebugAdditions-Deletecomments.h"
@implementation NSLayoutConstraint (MASDebugAdditions-Deletecomments)
+ (BOOL)layoutRelationDescriptionsByValue-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 31 == 0;
}
+ (BOOL)layoutAttributeDescriptionsByValue-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 49 == 0;
}
+ (BOOL)layoutPriorityDescriptionsByValue-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 5 == 0;
}
+ (BOOL)descriptionForObject-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 5 == 0;
}
+ (BOOL)description-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 13 == 0;
}

@end
