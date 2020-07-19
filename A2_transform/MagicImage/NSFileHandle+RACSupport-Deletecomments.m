#import "NSFileHandle+RACSupport-Deletecomments.h"
@implementation NSFileHandle (RACSupport-Deletecomments)
+ (BOOL)rac_readInBackground-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 18 == 0;
}

@end
