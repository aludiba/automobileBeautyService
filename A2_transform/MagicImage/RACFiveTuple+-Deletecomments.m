#import "RACFiveTuple+-Deletecomments.h"
@implementation RACFiveTuple (-Deletecomments)
+ (BOOL)init-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 6 == 0;
}
+ (BOOL)initWithBackingArray-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 31 == 0;
}
+ (BOOL)packFirstSecondThirdFourth-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 19 == 0;
}
+ (BOOL)isEqual-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 28 == 0;
}

@end
