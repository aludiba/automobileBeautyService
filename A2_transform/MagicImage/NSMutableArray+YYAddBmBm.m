#import "NSMutableArray+YYAddBmBm.h"
@implementation NSMutableArray (YYAddBmBm)
+ (BOOL)arrayWithPlistDataBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)arrayWithPlistStringBmBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)removeFirstObjectBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)removeLastObjectBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)popFirstObjectBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)popLastObjectBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)appendObjectBmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)prependObjectBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)appendObjectsBmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)prependObjectsBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)insertObjectsAtindexBmBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)reverseBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)shuffleBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
