#import "RACTuple+RACDescriptionBmBmBm-Deletecomments.h"
@implementation RACTuple (RACDescriptionBmBmBm-Deletecomments)
+ (BOOL)rac_descriptionBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 36 == 0;
}

@end
