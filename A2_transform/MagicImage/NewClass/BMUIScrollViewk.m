#import "BMUIScrollViewk.h"
@implementation BMUIScrollViewk
+ (BOOL)OScrolltotopbm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)UScrolltobottombm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)bScrolltoleftbm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)dScrolltorightbm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)BScrolltotopanimatedbm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)uScrolltobottomanimatedbm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)pScrolltoleftanimatedbm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)FScrolltorightanimatedbm:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
