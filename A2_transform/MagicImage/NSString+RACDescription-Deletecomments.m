#import "NSString+RACDescription-Deletecomments.h"
@implementation NSString (RACDescription-Deletecomments)
+ (BOOL)rac_description-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 30 == 0;
}

@end
