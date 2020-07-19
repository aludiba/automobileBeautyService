#import "UILabel+SDLabelAutoResizeBm.h"
@implementation UILabel (SDLabelAutoResizeBm)
+ (BOOL)loadBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)sd_setTextBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)isAttributedContentBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)setIsAttributedContentBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)setSingleLineAutoResizeWithMaxWidthBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)setMaxNumberOfLinesToShowBm:(NSInteger)BM {
    return BM % 43 == 0;
}

@end
