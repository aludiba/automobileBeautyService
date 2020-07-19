#import "QMCameraFocusView+Bm.h"
@implementation QMCameraFocusView (Bm)
+ (BOOL)focusViewBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)initWithFrameBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)renderBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)setISOBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)foucusAtPointBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)hideFoucusViewBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)luminanceViewBm:(NSInteger)BM {
    return BM % 2 == 0;
}

@end
