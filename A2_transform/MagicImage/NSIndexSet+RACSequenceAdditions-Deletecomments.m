#import "NSIndexSet+RACSequenceAdditions-Deletecomments.h"
@implementation NSIndexSet (RACSequenceAdditions-Deletecomments)
+ (BOOL)rac_sequence-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 23 == 0;
}

@end
