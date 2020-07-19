#import "NSMutableDictionary+YYAddBmBm.h"
@implementation NSMutableDictionary (YYAddBmBm)
+ (BOOL)dictionaryWithPlistDataBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)dictionaryWithPlistStringBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)popObjectForKeyBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)popEntriesForKeysBmBm:(NSInteger)BM {
    return BM % 41 == 0;
}

@end
