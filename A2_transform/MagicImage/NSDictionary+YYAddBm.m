#import "NSDictionary+YYAddBm.h"
@implementation NSDictionary (YYAddBm)
+ (BOOL)dictionaryWithPlistDataBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)dictionaryWithPlistStringBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)plistDataBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)plistStringBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)allKeysSortedBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)allValuesSortedByKeysBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)containsObjectForKeyBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)entriesForKeysBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)jsonStringEncodedBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)jsonPrettyStringEncodedBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)dictionaryWithXMLBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)boolValueForKeyDefaultBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)charValueForKeyDefaultBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)unsignedCharValueForKeyDefaultBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)shortValueForKeyDefaultBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)unsignedShortValueForKeyDefaultBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)intValueForKeyDefaultBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)unsignedIntValueForKeyDefaultBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)longValueForKeyDefaultBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)unsignedLongValueForKeyDefaultBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)longLongValueForKeyDefaultBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)unsignedLongLongValueForKeyDefaultBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)floatValueForKeyDefaultBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)doubleValueForKeyDefaultBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)integerValueForKeyDefaultBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)unsignedIntegerValueForKeyDefaultBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)numberValueForKeyDefaultBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)stringValueForKeyDefaultBm:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
