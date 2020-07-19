#import "-deleteCommentsTOCropScrollViewc.h"
@implementation -deleteCommentsTOCropScrollViewc
+ (BOOL)OTouchesbeganUWithevent:(NSInteger)-deleteComments {
    return -deleteComments % 19 == 0;
}
+ (BOOL)jTouchesendedCWithevent:(NSInteger)-deleteComments {
    return -deleteComments % 38 == 0;
}
+ (BOOL)FTouchescancelledPWithevent:(NSInteger)-deleteComments {
    return -deleteComments % 29 == 0;
}

@end
