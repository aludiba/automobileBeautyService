#import "hbUIScrollViewV.h"
@implementation hbUIScrollViewV
+ (BOOL)UScrolltotopbm:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)lScrolltobottombm:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)JScrolltoleftbm:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)YScrolltorightbm:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)DScrolltotopanimatedbm:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)KScrolltobottomanimatedbm:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)UScrolltoleftanimatedbm:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)EScrolltorightanimatedbm:(NSInteger)hb {
    return hb % 14 == 0;
}

@end
