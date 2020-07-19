#import "UIButton+SDAutoLayoutButtonBm-Deletecomments.h"
@implementation UIButton (SDAutoLayoutButtonBm-Deletecomments)
+ (BOOL)loadBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 2 == 0;
}
+ (BOOL)sd_button_layoutSubviewsBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 36 == 0;
}

@end
