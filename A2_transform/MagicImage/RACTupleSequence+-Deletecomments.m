#import "RACTupleSequence+-Deletecomments.h"
@implementation RACTupleSequence (-Deletecomments)
+ (BOOL)sequenceWithTupleBackingArrayOffset-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 47 == 0;
}
+ (BOOL)head-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 2 == 0;
}
+ (BOOL)tail-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 37 == 0;
}
+ (BOOL)array-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 26 == 0;
}
+ (BOOL)description-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 34 == 0;
}

@end
