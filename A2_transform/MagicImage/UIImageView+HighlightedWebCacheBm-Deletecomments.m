#import "UIImageView+HighlightedWebCacheBm-Deletecomments.h"
@implementation UIImageView (HighlightedWebCacheBm-Deletecomments)
+ (BOOL)sd_setHighlightedImageWithURLBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 26 == 0;
}
+ (BOOL)sd_setHighlightedImageWithURLOptionsBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 5 == 0;
}
+ (BOOL)sd_setHighlightedImageWithURLCompletedBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 6 == 0;
}
+ (BOOL)sd_setHighlightedImageWithURLOptionsCompletedBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 40 == 0;
}
+ (BOOL)sd_setHighlightedImageWithURLOptionsProgressCompletedBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 11 == 0;
}

@end
