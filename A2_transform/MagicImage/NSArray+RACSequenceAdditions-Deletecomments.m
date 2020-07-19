#import "NSArray+RACSequenceAdditions-Deletecomments.h"
@implementation NSArray (RACSequenceAdditions-Deletecomments)
+ (BOOL)rac_sequence-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 36 == 0;
}

@end
