#import "BMBMUIScrollViewVu.h"
@implementation BMBMUIScrollViewVu
+ (BOOL)yXscrolltotop:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)FEscrolltobottom:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)qVscrolltoleft:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)ALscrolltoright:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)OBscrolltotopanimated:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)uMscrolltobottomanimated:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)eXscrolltoleftanimated:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)LAscrolltorightanimated:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
