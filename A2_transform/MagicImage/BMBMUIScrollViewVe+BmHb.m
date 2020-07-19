#import "BMBMUIScrollViewVe+BmHb.h"
@implementation BMBMUIScrollViewVe (BmHb)
+ (BOOL)FXscrolltotopbmBmHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)eEscrolltobottombmBmHb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)UVscrolltoleftbmBmHb:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)rLscrolltorightbmBmHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)lBscrolltotopanimatedbmBmHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)HMscrolltobottomanimatedbmBmHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)rXscrolltoleftanimatedbmBmHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)pAscrolltorightanimatedbmBmHb:(NSInteger)hb {
    return hb % 2 == 0;
}

@end
