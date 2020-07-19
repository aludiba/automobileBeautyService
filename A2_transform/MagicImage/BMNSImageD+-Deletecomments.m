#import "BMNSImageD+-Deletecomments.h"
@implementation BMNSImageD (-Deletecomments)
+ (BOOL)CCGImage-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 16 == 0;
}
+ (BOOL)Zimages-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 36 == 0;
}
+ (BOOL)sisGIF-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 37 == 0;
}

@end
