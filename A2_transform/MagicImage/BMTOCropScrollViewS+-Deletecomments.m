#import "BMTOCropScrollViewS+-Deletecomments.h"
@implementation BMTOCropScrollViewS (-Deletecomments)
+ (BOOL)UTouchesbeganwitheventbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 46 == 0;
}
+ (BOOL)pTouchesendedwitheventbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 30 == 0;
}
+ (BOOL)HTouchescancelledwitheventbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 7 == 0;
}

@end
