#import "BMTOCropScrollViewM+Bm-Deletecomments.h"
@implementation BMTOCropScrollViewM (Bm-Deletecomments)
+ (BOOL)GTouchesbeganWWitheventBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 49 == 0;
}
+ (BOOL)RTouchesendedQWitheventBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 14 == 0;
}
+ (BOOL)HTouchescancelledNWitheventBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 2 == 0;
}

@end
