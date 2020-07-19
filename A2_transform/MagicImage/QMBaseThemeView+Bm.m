#import "QMBaseThemeView+Bm.h"
@implementation QMBaseThemeView (Bm)
+ (BOOL)initWithFrameBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)buildContentViewBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)buildToolBarBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)buttonTappedBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)showBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)hideBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)setTitleBm:(NSInteger)BM {
    return BM % 19 == 0;
}

@end
