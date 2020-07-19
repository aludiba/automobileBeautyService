#import "RACTuple+RACDescriptionBmBm-Deletecomments.h"
@implementation RACTuple (RACDescriptionBmBm-Deletecomments)
+ (BOOL)rac_descriptionBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 50 == 0;
}

@end
