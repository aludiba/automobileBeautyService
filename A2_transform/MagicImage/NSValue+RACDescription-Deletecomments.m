#import "NSValue+RACDescription-Deletecomments.h"
@implementation NSValue (RACDescription-Deletecomments)
+ (BOOL)rac_description-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 31 == 0;
}

@end
