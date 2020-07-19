#import "BMBMTOCropScrollViewMf+-Deletecomments.h"
@implementation BMBMTOCropScrollViewMf (-Deletecomments)
+ (BOOL)pGtouchesbeganwwitheventbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 27 == 0;
}
+ (BOOL)zRtouchesendedqwitheventbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 37 == 0;
}
+ (BOOL)YHtouchescancellednwitheventbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 8 == 0;
}

@end
