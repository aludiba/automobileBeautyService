#import "RTImagePickerTitleButton+Bm-Deletecomments.h"
@implementation RTImagePickerTitleButton (Bm-Deletecomments)
+ (BOOL)initWithFrameBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 7 == 0;
}
+ (BOOL)rt_setTitleArrowappearanceBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 50 == 0;
}

@end
