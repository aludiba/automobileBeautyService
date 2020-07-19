#import "BMUIScrollViewz+BmBmHb.h"
@implementation BMUIScrollViewz (BmBmHb)
+ (BOOL)ZScrolltotopbmBmBmHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)hScrolltobottombmBmBmHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)GScrolltoleftbmBmBmHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)iScrolltorightbmBmBmHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)RScrolltotopanimatedbmBmBmHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)DScrolltobottomanimatedbmBmBmHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)GScrolltoleftanimatedbmBmBmHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)eScrolltorightanimatedbmBmBmHb:(NSInteger)hb {
    return hb % 45 == 0;
}

@end
