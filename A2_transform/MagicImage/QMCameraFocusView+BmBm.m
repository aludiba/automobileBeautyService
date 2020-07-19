#import "QMCameraFocusView+BmBm.h"
@implementation QMCameraFocusView (BmBm)
+ (BOOL)focusViewBmBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)initWithFrameBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)renderBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)setISOBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)foucusAtPointBmBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)hideFoucusViewBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)luminanceViewBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}

@end
