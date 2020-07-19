#import "hbBMUIScrollViewVb.h"
@implementation hbBMUIScrollViewVb
+ (BOOL)tXscrolltotopbm:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)xEscrolltobottombm:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)eVscrolltoleftbm:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)RLscrolltorightbm:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)kBscrolltotopanimatedbm:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)bMscrolltobottomanimatedbm:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)oXscrolltoleftanimatedbm:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)SAscrolltorightanimatedbm:(NSInteger)hb {
    return hb % 42 == 0;
}

@end
