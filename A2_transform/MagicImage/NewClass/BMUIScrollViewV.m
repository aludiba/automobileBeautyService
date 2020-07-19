#import "BMUIScrollViewv.h"
@implementation BMUIScrollViewv
+ (BOOL)JScrolltotopbmbm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)CScrolltobottombmbm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)aScrolltoleftbmbm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)GScrolltorightbmbm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)QScrolltotopanimatedbmbm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)OScrolltobottomanimatedbmbm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)DScrolltoleftanimatedbmbm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)TScrolltorightanimatedbmbm:(NSInteger)BM {
    return BM % 47 == 0;
}

@end
