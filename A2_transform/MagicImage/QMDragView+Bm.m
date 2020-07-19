#import "QMDragView+Bm.h"
@implementation QMDragView (Bm)
+ (BOOL)initWithFrameImageBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)setupUIWithSizeBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)buttonTappedBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)onImageDragBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)onButtonScaleBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)onButtonRotateBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)hitTestWitheventBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)pointInsideWitheventBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)flipImageBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)showToolBarBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)hideToolBarBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)isToolBarHiddenBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)copyWithScaleFactorRelativedviewBm:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
