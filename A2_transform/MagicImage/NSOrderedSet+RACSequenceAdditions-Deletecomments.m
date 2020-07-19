#import "NSOrderedSet+RACSequenceAdditions-Deletecomments.h"
@implementation NSOrderedSet (RACSequenceAdditions-Deletecomments)
+ (BOOL)rac_sequence-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 18 == 0;
}

@end
