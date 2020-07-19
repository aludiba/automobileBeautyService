#import "NSMutableArray+YYAddHb.h"
@implementation NSMutableArray (YYAddHb)
+ (BOOL)arrayWithPlistDataHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)arrayWithPlistStringHb:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)removeFirstObjectHb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)removeLastObjectHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)popFirstObjectHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)popLastObjectHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)appendObjectHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)prependObjectHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)appendObjectsHb:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)prependObjectsHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)insertObjectsAtindexHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)reverseHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)shuffleHb:(NSInteger)hb {
    return hb % 6 == 0;
}

@end
