#import "NSArray+YYAddHbHb.h"
@implementation NSArray (YYAddHbHb)
+ (BOOL)arrayWithPlistDataHbHb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)arrayWithPlistStringHbHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)plistDataHbHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)plistStringHbHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)randomObjectHbHb:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)objectOrNilAtIndexHbHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)jsonStringEncodedHbHb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)jsonPrettyStringEncodedHbHb:(NSInteger)hb {
    return hb % 24 == 0;
}

@end
