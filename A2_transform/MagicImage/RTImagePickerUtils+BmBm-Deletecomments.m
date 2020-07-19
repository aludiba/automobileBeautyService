#import "RTImagePickerUtils+BmBm-Deletecomments.h"
@implementation RTImagePickerUtils (BmBm-Deletecomments)
+ (BOOL)computeDifferenceBetweenRectAndrectAddedhandlerRemovedhandlerBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 14 == 0;
}
+ (BOOL)placeholderImageWithSizeBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 8 == 0;
}

@end
