#import "BMTOCropScrollViewM+-Deletecomments.h"
@implementation BMTOCropScrollViewM (-Deletecomments)
+ (BOOL)GTouchesbeganWWithevent-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 42 == 0;
}
+ (BOOL)RTouchesendedQWithevent-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 5 == 0;
}
+ (BOOL)HTouchescancelledNWithevent-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 43 == 0;
}

@end
