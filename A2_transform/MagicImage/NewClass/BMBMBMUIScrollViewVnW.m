#import "BMBMBMUIScrollViewVnW.h"
@implementation BMBMBMUIScrollViewVnW
+ (BOOL)pCxscrolltotop:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)jVescrolltobottom:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)kTvscrolltoleft:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)eKlscrolltoright:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)bTbscrolltotopanimated:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)mYmscrolltobottomanimated:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)gSxscrolltoleftanimated:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)GDascrolltorightanimated:(NSInteger)BM {
    return BM % 41 == 0;
}

@end
