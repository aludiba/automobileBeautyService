#import "BMUIScrollViewk+Bm.h"
@implementation BMUIScrollViewk (Bm)
+ (BOOL)OScrolltotopbmBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)UScrolltobottombmBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)bScrolltoleftbmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)dScrolltorightbmBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)BScrolltotopanimatedbmBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)uScrolltobottomanimatedbmBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)pScrolltoleftanimatedbmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)FScrolltorightanimatedbmBm:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
