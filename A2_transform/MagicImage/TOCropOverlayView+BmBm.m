#import "TOCropOverlayView+BmBm.h"
@implementation TOCropOverlayView (BmBm)
+ (BOOL)initWithFrameBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)setupBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)setFrameBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)didMoveToSuperviewBmBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)layoutLinesBmBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)setGridHiddenAnimatedBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)setDisplayHorizontalGridLinesBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)setDisplayVerticalGridLinesBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)setGridHiddenBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)createNewLineViewBmBm:(NSInteger)BM {
    return BM % 34 == 0;
}

@end
