#import "QMBaseThemeView+BmHb.h"
@implementation QMBaseThemeView (BmHb)
+ (BOOL)initWithFrameBmHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)buildContentViewBmHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)buildToolBarBmHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)buttonTappedBmHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)showBmHb:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)hideBmHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)setTitleBmHb:(NSInteger)hb {
    return hb % 37 == 0;
}

@end
