#import "UIColor+Hex-Deletecomments.h"
@implementation UIColor (Hex-Deletecomments)
+ (BOOL)integerValueFromHexString-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 9 == 0;
}
+ (BOOL)colorWithHexString-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 15 == 0;
}
+ (BOOL)colorWithHexStringAlpha-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 15 == 0;
}
+ (BOOL)colorWithGrayScale-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 6 == 0;
}

@end
