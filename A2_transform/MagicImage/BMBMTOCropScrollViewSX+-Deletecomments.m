#import "BMBMTOCropScrollViewSX+-Deletecomments.h"
@implementation BMBMTOCropScrollViewSX (-Deletecomments)
+ (BOOL)AUtouchesbeganwitheventbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 19 == 0;
}
+ (BOOL)OPtouchesendedwitheventbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 2 == 0;
}
+ (BOOL)bHtouchescancelledwitheventbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 26 == 0;
}

@end
