#import "NSMutableDictionary+YYAddHb.h"
@implementation NSMutableDictionary (YYAddHb)
+ (BOOL)dictionaryWithPlistDataHb:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)dictionaryWithPlistStringHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)popObjectForKeyHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)popEntriesForKeysHb:(NSInteger)hb {
    return hb % 19 == 0;
}

@end
