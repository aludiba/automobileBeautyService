#import "NSURLConnection+RACSupport-Deletecomments.h"
@implementation NSURLConnection (RACSupport-Deletecomments)
+ (BOOL)rac_sendAsynchronousRequest-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 6 == 0;
}

@end
