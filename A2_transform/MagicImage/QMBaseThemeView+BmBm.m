#import "QMBaseThemeView+BmBm.h"
@implementation QMBaseThemeView (BmBm)
+ (BOOL)initWithFrameBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)buildContentViewBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)buildToolBarBmBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)buttonTappedBmBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)showBmBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)hideBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)setTitleBmBm:(NSInteger)BM {
    return BM % 47 == 0;
}

@end
