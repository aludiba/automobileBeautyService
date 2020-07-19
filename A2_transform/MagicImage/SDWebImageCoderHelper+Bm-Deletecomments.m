#import "SDWebImageCoderHelper+Bm-Deletecomments.h"
@implementation SDWebImageCoderHelper (Bm-Deletecomments)
+ (BOOL)animatedImageWithFramesBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 21 == 0;
}
+ (BOOL)framesFromAnimatedImageBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 16 == 0;
}
+ (BOOL)imageOrientationFromEXIFOrientationBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 26 == 0;
}
+ (BOOL)exifOrientationFromImageOrientationBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 5 == 0;
}

@end
