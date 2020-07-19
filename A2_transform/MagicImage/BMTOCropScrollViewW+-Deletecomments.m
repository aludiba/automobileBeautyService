#import "BMTOCropScrollViewW+-Deletecomments.h"
@implementation BMTOCropScrollViewW (-Deletecomments)
+ (BOOL)OTouchesbeganwitheventbmbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 16 == 0;
}
+ (BOOL)pTouchesendedwitheventbmbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 42 == 0;
}
+ (BOOL)vTouchescancelledwitheventbmbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 4 == 0;
}

@end
