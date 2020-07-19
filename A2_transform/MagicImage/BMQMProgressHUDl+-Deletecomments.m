#import "BMQMProgressHUDl+-Deletecomments.h"
@implementation BMQMProgressHUDl (-Deletecomments)
+ (BOOL)cshow-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 14 == 0;
}
+ (BOOL)Fhide-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 27 == 0;
}

@end
