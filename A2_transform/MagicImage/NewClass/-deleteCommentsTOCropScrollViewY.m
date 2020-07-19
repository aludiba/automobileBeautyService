#import "-deleteCommentsTOCropScrollViewY.h"
@implementation -deleteCommentsTOCropScrollViewY
+ (BOOL)lTouchesbeganIWithevent:(NSInteger)-deleteComments {
    return -deleteComments % 49 == 0;
}
+ (BOOL)hTouchesendedbWithevent:(NSInteger)-deleteComments {
    return -deleteComments % 30 == 0;
}
+ (BOOL)UTouchescancellednWithevent:(NSInteger)-deleteComments {
    return -deleteComments % 27 == 0;
}

@end
