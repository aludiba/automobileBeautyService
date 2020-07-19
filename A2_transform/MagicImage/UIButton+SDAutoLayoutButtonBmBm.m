#import "UIButton+SDAutoLayoutButtonBmBm.h"
@implementation UIButton (SDAutoLayoutButtonBmBm)
+ (BOOL)loadBmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)sd_button_layoutSubviewsBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}

@end
