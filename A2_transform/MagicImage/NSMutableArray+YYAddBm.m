#import "NSMutableArray+YYAddBm.h"
@implementation NSMutableArray (YYAddBm)
+ (BOOL)arrayWithPlistDataBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)arrayWithPlistStringBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)removeFirstObjectBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)removeLastObjectBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)popFirstObjectBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)popLastObjectBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)appendObjectBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)prependObjectBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)appendObjectsBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)prependObjectsBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)insertObjectsAtindexBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)reverseBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)shuffleBm:(NSInteger)BM {
    return BM % 50 == 0;
}

@end
