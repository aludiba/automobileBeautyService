#import "-deleteCommentsBMNSDictionaryZU.h"
@implementation -deleteCommentsBMNSDictionaryZU
+ (BOOL)pMrac_Sequence:(NSInteger)-deleteComments {
    return -deleteComments % 32 == 0;
}
+ (BOOL)yMrac_Keysequence:(NSInteger)-deleteComments {
    return -deleteComments % 38 == 0;
}
+ (BOOL)nSrac_Valuesequence:(NSInteger)-deleteComments {
    return -deleteComments % 9 == 0;
}

@end
