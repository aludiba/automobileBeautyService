#import "BMUIScrollViewz+BmHb.h"
@implementation BMUIScrollViewz (BmHb)
+ (BOOL)ZScrolltotopbmBmHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)hScrolltobottombmBmHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)GScrolltoleftbmBmHb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)iScrolltorightbmBmHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)RScrolltotopanimatedbmBmHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)DScrolltobottomanimatedbmBmHb:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)GScrolltoleftanimatedbmBmHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)eScrolltorightanimatedbmBmHb:(NSInteger)hb {
    return hb % 41 == 0;
}

@end
