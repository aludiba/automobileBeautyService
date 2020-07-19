#import "NSSet+RACSequenceAdditions-Deletecomments.h"
@implementation NSSet (RACSequenceAdditions-Deletecomments)
+ (BOOL)rac_sequence-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 25 == 0;
}

@end
