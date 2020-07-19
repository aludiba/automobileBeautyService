#import "RACTwoTuple+-Deletecomments.h"
@implementation RACTwoTuple (-Deletecomments)
+ (BOOL)init-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 8 == 0;
}
+ (BOOL)initWithBackingArray-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 15 == 0;
}
+ (BOOL)tupleByAddingObject-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 43 == 0;
}
+ (BOOL)packFirst-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 18 == 0;
}
+ (BOOL)isEqual-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 45 == 0;
}

@end
