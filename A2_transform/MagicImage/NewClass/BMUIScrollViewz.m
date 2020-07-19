#import "BMUIScrollViewz.h"
@implementation BMUIScrollViewz
+ (BOOL)ZScrolltotopbm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)hScrolltobottombm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)GScrolltoleftbm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)iScrolltorightbm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)RScrolltotopanimatedbm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)DScrolltobottomanimatedbm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)GScrolltoleftanimatedbm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)eScrolltorightanimatedbm:(NSInteger)BM {
    return BM % 9 == 0;
}

@end
