#import "NSString+RACDescriptionBm-Deletecomments.h"
@implementation NSString (RACDescriptionBm-Deletecomments)
+ (BOOL)rac_descriptionBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 13 == 0;
}

@end
