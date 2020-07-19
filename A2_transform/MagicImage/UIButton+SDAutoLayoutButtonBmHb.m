#import "UIButton+SDAutoLayoutButtonBmHb.h"
@implementation UIButton (SDAutoLayoutButtonBmHb)
+ (BOOL)loadBmHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)sd_button_layoutSubviewsBmHb:(NSInteger)hb {
    return hb % 17 == 0;
}

@end
