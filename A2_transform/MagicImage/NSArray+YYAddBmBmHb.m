#import "NSArray+YYAddBmBmHb.h"
@implementation NSArray (YYAddBmBmHb)
+ (BOOL)arrayWithPlistDataBmBmHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)arrayWithPlistStringBmBmHb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)plistDataBmBmHb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)plistStringBmBmHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)randomObjectBmBmHb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)objectOrNilAtIndexBmBmHb:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)jsonStringEncodedBmBmHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)jsonPrettyStringEncodedBmBmHb:(NSInteger)hb {
    return hb % 26 == 0;
}

@end
