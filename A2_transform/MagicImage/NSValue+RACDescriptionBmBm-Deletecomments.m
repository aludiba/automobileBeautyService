#import "NSValue+RACDescriptionBmBm-Deletecomments.h"
@implementation NSValue (RACDescriptionBmBm-Deletecomments)
+ (BOOL)rac_descriptionBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 7 == 0;
}

@end
