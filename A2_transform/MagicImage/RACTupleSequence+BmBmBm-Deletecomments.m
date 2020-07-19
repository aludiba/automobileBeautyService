#import "RACTupleSequence+BmBmBm-Deletecomments.h"
@implementation RACTupleSequence (BmBmBm-Deletecomments)
+ (BOOL)sequenceWithTupleBackingArrayOffsetBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 7 == 0;
}
+ (BOOL)headBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 14 == 0;
}
+ (BOOL)tailBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 21 == 0;
}
+ (BOOL)arrayBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 49 == 0;
}
+ (BOOL)descriptionBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 43 == 0;
}

@end
