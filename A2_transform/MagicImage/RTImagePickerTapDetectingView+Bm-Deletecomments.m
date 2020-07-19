#import "RTImagePickerTapDetectingView+Bm-Deletecomments.h"
@implementation RTImagePickerTapDetectingView (Bm-Deletecomments)
+ (BOOL)initBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 49 == 0;
}
+ (BOOL)initWithFrameBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 28 == 0;
}
+ (BOOL)touchesEndedWitheventBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 42 == 0;
}
+ (BOOL)handleSingleTapBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 49 == 0;
}
+ (BOOL)handleDoubleTapBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 17 == 0;
}
+ (BOOL)handleTripleTapBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 41 == 0;
}

@end
