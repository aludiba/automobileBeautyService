#import "BMBMUIScrollViewVn.h"
@implementation BMBMUIScrollViewVn
+ (BOOL)cXscrolltotop:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)VEscrolltobottom:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)TVscrolltoleft:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)KLscrolltoright:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)TBscrolltotopanimated:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)YMscrolltobottomanimated:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)SXscrolltoleftanimated:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)DAscrolltorightanimated:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
