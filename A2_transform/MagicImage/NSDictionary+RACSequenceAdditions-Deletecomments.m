#import "NSDictionary+RACSequenceAdditions-Deletecomments.h"
@implementation NSDictionary (RACSequenceAdditions-Deletecomments)
+ (BOOL)rac_sequence-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 38 == 0;
}
+ (BOOL)rac_keySequence-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 42 == 0;
}
+ (BOOL)rac_valueSequence-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 40 == 0;
}

@end
