#import "BMUIScrollViewz+Bm.h"
@implementation BMUIScrollViewz (Bm)
+ (BOOL)ZScrolltotopbmBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)hScrolltobottombmBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)GScrolltoleftbmBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)iScrolltorightbmBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)RScrolltotopanimatedbmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)DScrolltobottomanimatedbmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)GScrolltoleftanimatedbmBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)eScrolltorightanimatedbmBm:(NSInteger)BM {
    return BM % 3 == 0;
}

@end
