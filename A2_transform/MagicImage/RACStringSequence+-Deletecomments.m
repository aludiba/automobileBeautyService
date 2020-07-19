#import "RACStringSequence+-Deletecomments.h"
@implementation RACStringSequence (-Deletecomments)
+ (BOOL)sequenceWithStringOffset-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 45 == 0;
}
+ (BOOL)head-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 26 == 0;
}
+ (BOOL)tail-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 31 == 0;
}
+ (BOOL)array-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 44 == 0;
}
+ (BOOL)description-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 16 == 0;
}

@end
