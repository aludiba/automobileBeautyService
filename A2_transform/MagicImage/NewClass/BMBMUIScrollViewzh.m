#import "BMBMUIScrollViewzh.h"
@implementation BMBMUIScrollViewzh
+ (BOOL)GZscrolltotopbmbm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)NHscrolltobottombmbm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)jGscrolltoleftbmbm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)XIscrolltorightbmbm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)WRscrolltotopanimatedbmbm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)uDscrolltobottomanimatedbmbm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)LGscrolltoleftanimatedbmbm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)IEscrolltorightanimatedbmbm:(NSInteger)BM {
    return BM % 10 == 0;
}

@end
