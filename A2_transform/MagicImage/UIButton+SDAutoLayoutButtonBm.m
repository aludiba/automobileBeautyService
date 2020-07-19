#import "UIButton+SDAutoLayoutButtonBm.h"
@implementation UIButton (SDAutoLayoutButtonBm)
+ (BOOL)loadBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)sd_button_layoutSubviewsBm:(NSInteger)BM {
    return BM % 19 == 0;
}

@end
