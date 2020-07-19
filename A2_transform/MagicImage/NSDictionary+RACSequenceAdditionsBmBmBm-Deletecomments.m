#import "NSDictionary+RACSequenceAdditionsBmBmBm-Deletecomments.h"
@implementation NSDictionary (RACSequenceAdditionsBmBmBm-Deletecomments)
+ (BOOL)rac_sequenceBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 4 == 0;
}
+ (BOOL)rac_keySequenceBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 17 == 0;
}
+ (BOOL)rac_valueSequenceBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 18 == 0;
}

@end
