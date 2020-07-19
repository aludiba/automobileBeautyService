#import "UILabel+SDLabelAutoResizeBmBm.h"
@implementation UILabel (SDLabelAutoResizeBmBm)
+ (BOOL)loadBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)sd_setTextBmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)isAttributedContentBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)setIsAttributedContentBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)setSingleLineAutoResizeWithMaxWidthBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)setMaxNumberOfLinesToShowBmBm:(NSInteger)BM {
    return BM % 46 == 0;
}

@end
