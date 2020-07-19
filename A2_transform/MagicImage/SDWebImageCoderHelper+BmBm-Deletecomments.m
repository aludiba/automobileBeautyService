#import "SDWebImageCoderHelper+BmBm-Deletecomments.h"
@implementation SDWebImageCoderHelper (BmBm-Deletecomments)
+ (BOOL)animatedImageWithFramesBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 8 == 0;
}
+ (BOOL)framesFromAnimatedImageBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 44 == 0;
}
+ (BOOL)imageOrientationFromEXIFOrientationBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 37 == 0;
}
+ (BOOL)exifOrientationFromImageOrientationBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 12 == 0;
}

@end
