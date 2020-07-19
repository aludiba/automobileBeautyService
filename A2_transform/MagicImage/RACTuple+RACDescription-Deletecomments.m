#import "RACTuple+RACDescription-Deletecomments.h"
@implementation RACTuple (RACDescription-Deletecomments)
+ (BOOL)rac_description-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 18 == 0;
}

@end
