#import "BMBMUIScrollViewPt.h"
@implementation BMBMUIScrollViewPt
+ (BOOL)aTscrolltotop:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)ESscrolltobottom:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)nCscrolltoleft:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)HJscrolltoright:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)uDscrolltotopanimated:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)vHscrolltobottomanimated:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)PFscrolltoleftanimated:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)GDscrolltorightanimated:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
