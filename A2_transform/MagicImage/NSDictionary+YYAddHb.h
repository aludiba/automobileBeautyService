#import <UIKit/UIKit.h>
#import "NSDictionary+YYAdd.h"
#import "NSString+YYAdd.h"
#import "NSData+YYAdd.h"
#import "YYCategoriesMacro.h"

@interface NSDictionary (YYAddHb)
+ (BOOL)dictionaryWithPlistDataHb:(NSInteger)hb;
+ (BOOL)dictionaryWithPlistStringHb:(NSInteger)hb;
+ (BOOL)plistDataHb:(NSInteger)hb;
+ (BOOL)plistStringHb:(NSInteger)hb;
+ (BOOL)allKeysSortedHb:(NSInteger)hb;
+ (BOOL)allValuesSortedByKeysHb:(NSInteger)hb;
+ (BOOL)containsObjectForKeyHb:(NSInteger)hb;
+ (BOOL)entriesForKeysHb:(NSInteger)hb;
+ (BOOL)jsonStringEncodedHb:(NSInteger)hb;
+ (BOOL)jsonPrettyStringEncodedHb:(NSInteger)hb;
+ (BOOL)dictionaryWithXMLHb:(NSInteger)hb;
+ (BOOL)boolValueForKeyDefaultHb:(NSInteger)hb;
+ (BOOL)charValueForKeyDefaultHb:(NSInteger)hb;
+ (BOOL)unsignedCharValueForKeyDefaultHb:(NSInteger)hb;
+ (BOOL)shortValueForKeyDefaultHb:(NSInteger)hb;
+ (BOOL)unsignedShortValueForKeyDefaultHb:(NSInteger)hb;
+ (BOOL)intValueForKeyDefaultHb:(NSInteger)hb;
+ (BOOL)unsignedIntValueForKeyDefaultHb:(NSInteger)hb;
+ (BOOL)longValueForKeyDefaultHb:(NSInteger)hb;
+ (BOOL)unsignedLongValueForKeyDefaultHb:(NSInteger)hb;
+ (BOOL)longLongValueForKeyDefaultHb:(NSInteger)hb;
+ (BOOL)unsignedLongLongValueForKeyDefaultHb:(NSInteger)hb;
+ (BOOL)floatValueForKeyDefaultHb:(NSInteger)hb;
+ (BOOL)doubleValueForKeyDefaultHb:(NSInteger)hb;
+ (BOOL)integerValueForKeyDefaultHb:(NSInteger)hb;
+ (BOOL)unsignedIntegerValueForKeyDefaultHb:(NSInteger)hb;
+ (BOOL)numberValueForKeyDefaultHb:(NSInteger)hb;
+ (BOOL)stringValueForKeyDefaultHb:(NSInteger)hb;

@end
