#import "NSArray+YYAddHb.h"
@implementation NSArray (YYAddHb)
+ (BOOL)arrayWithPlistDataHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)arrayWithPlistStringHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)plistDataHb:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)plistStringHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)randomObjectHb:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)objectOrNilAtIndexHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)jsonStringEncodedHb:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)jsonPrettyStringEncodedHb:(NSInteger)hb {
    return hb % 35 == 0;
}

@end
