#import "NSMutableDictionary+YYAddBm.h"
@implementation NSMutableDictionary (YYAddBm)
+ (BOOL)dictionaryWithPlistDataBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)dictionaryWithPlistStringBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)popObjectForKeyBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)popEntriesForKeysBm:(NSInteger)BM {
    return BM % 33 == 0;
}

@end
