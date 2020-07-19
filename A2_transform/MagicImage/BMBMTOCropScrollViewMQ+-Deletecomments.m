#import "BMBMTOCropScrollViewMQ+-Deletecomments.h"
@implementation BMBMTOCropScrollViewMQ (-Deletecomments)
+ (BOOL)XGtouchesbeganwwithevent-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 22 == 0;
}
+ (BOOL)dRtouchesendedqwithevent-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 26 == 0;
}
+ (BOOL)LHtouchescancellednwithevent-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 18 == 0;
}

@end
