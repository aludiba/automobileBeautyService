#import "BMTOCropScrollViewe+-Deletecomments.h"
@implementation BMTOCropScrollViewe (-Deletecomments)
+ (BOOL)YTouchesbeganjWithevent-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 11 == 0;
}
+ (BOOL)OTouchesendedhWithevent-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 40 == 0;
}
+ (BOOL)HTouchescancelledSWithevent-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 5 == 0;
}

@end
