#import "hbBMUIScrollViewVY.h"
@implementation hbBMUIScrollViewVY
+ (BOOL)CXscrolltotopbm:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)WEscrolltobottombm:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)gVscrolltoleftbm:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)bLscrolltorightbm:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)RBscrolltotopanimatedbm:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)FMscrolltobottomanimatedbm:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)TXscrolltoleftanimatedbm:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)SAscrolltorightanimatedbm:(NSInteger)hb {
    return hb % 43 == 0;
}

@end
