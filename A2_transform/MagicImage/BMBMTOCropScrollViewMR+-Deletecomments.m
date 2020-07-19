#import "BMBMTOCropScrollViewMR+-Deletecomments.h"
@implementation BMBMTOCropScrollViewMR (-Deletecomments)
+ (BOOL)lGtouchesbeganwwithevent-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 15 == 0;
}
+ (BOOL)mRtouchesendedqwithevent-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 17 == 0;
}
+ (BOOL)THtouchescancellednwithevent-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 28 == 0;
}

@end
