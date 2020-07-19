#import "NSEnumerator+RACSequenceAdditions-Deletecomments.h"
@implementation NSEnumerator (RACSequenceAdditions-Deletecomments)
+ (BOOL)rac_sequence-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 9 == 0;
}

@end
