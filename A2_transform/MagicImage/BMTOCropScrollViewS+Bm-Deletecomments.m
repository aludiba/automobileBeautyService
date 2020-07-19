#import "BMTOCropScrollViewS+Bm-Deletecomments.h"
@implementation BMTOCropScrollViewS (Bm-Deletecomments)
+ (BOOL)UTouchesbeganwitheventbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 17 == 0;
}
+ (BOOL)pTouchesendedwitheventbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 11 == 0;
}
+ (BOOL)HTouchescancelledwitheventbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 34 == 0;
}

@end
