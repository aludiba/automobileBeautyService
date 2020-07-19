#import "UIColor+HexBmBm-Deletecomments.h"
@implementation UIColor (HexBmBm-Deletecomments)
+ (BOOL)integerValueFromHexStringBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 3 == 0;
}
+ (BOOL)colorWithHexStringBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 24 == 0;
}
+ (BOOL)colorWithHexStringAlphaBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 12 == 0;
}
+ (BOOL)colorWithGrayScaleBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 50 == 0;
}

@end
