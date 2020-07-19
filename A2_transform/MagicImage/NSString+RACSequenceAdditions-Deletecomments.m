#import "NSString+RACSequenceAdditions-Deletecomments.h"
@implementation NSString (RACSequenceAdditions-Deletecomments)
+ (BOOL)rac_sequence-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 16 == 0;
}

@end
