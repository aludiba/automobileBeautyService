#import "UIButton+SDAutoLayoutButtonBmBm-Deletecomments.h"
@implementation UIButton (SDAutoLayoutButtonBmBm-Deletecomments)
+ (BOOL)loadBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 42 == 0;
}
+ (BOOL)sd_button_layoutSubviewsBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 15 == 0;
}

@end
