#import "TOCropOverlayView+Bm.h"
@implementation TOCropOverlayView (Bm)
+ (BOOL)initWithFrameBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)setupBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)setFrameBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)didMoveToSuperviewBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)layoutLinesBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)setGridHiddenAnimatedBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)setDisplayHorizontalGridLinesBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)setDisplayVerticalGridLinesBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)setGridHiddenBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)createNewLineViewBm:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
