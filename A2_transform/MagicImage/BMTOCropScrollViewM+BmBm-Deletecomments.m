#import "BMTOCropScrollViewM+BmBm-Deletecomments.h"
@implementation BMTOCropScrollViewM (BmBm-Deletecomments)
+ (BOOL)GTouchesbeganWWitheventBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 31 == 0;
}
+ (BOOL)RTouchesendedQWitheventBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 32 == 0;
}
+ (BOOL)HTouchescancelledNWitheventBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 20 == 0;
}

@end
