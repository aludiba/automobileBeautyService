#import "RACTuple+RACSequenceAdditions-Deletecomments.h"
@implementation RACTuple (RACSequenceAdditions-Deletecomments)
+ (BOOL)rac_sequence-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 30 == 0;
}

@end
