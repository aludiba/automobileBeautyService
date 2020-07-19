#import <UIKit/UIKit.h>
#import "NSDictionary+YYAdd.h"
#import "NSString+YYAdd.h"
#import "NSData+YYAdd.h"
#import "YYCategoriesMacro.h"

@interface NSDictionary (YYAddBm)
+ (BOOL)dictionaryWithPlistDataBm:(NSInteger)BM;
+ (BOOL)dictionaryWithPlistStringBm:(NSInteger)BM;
+ (BOOL)plistDataBm:(NSInteger)BM;
+ (BOOL)plistStringBm:(NSInteger)BM;
+ (BOOL)allKeysSortedBm:(NSInteger)BM;
+ (BOOL)allValuesSortedByKeysBm:(NSInteger)BM;
+ (BOOL)containsObjectForKeyBm:(NSInteger)BM;
+ (BOOL)entriesForKeysBm:(NSInteger)BM;
+ (BOOL)jsonStringEncodedBm:(NSInteger)BM;
+ (BOOL)jsonPrettyStringEncodedBm:(NSInteger)BM;
+ (BOOL)dictionaryWithXMLBm:(NSInteger)BM;
+ (BOOL)boolValueForKeyDefaultBm:(NSInteger)BM;
+ (BOOL)charValueForKeyDefaultBm:(NSInteger)BM;
+ (BOOL)unsignedCharValueForKeyDefaultBm:(NSInteger)BM;
+ (BOOL)shortValueForKeyDefaultBm:(NSInteger)BM;
+ (BOOL)unsignedShortValueForKeyDefaultBm:(NSInteger)BM;
+ (BOOL)intValueForKeyDefaultBm:(NSInteger)BM;
+ (BOOL)unsignedIntValueForKeyDefaultBm:(NSInteger)BM;
+ (BOOL)longValueForKeyDefaultBm:(NSInteger)BM;
+ (BOOL)unsignedLongValueForKeyDefaultBm:(NSInteger)BM;
+ (BOOL)longLongValueForKeyDefaultBm:(NSInteger)BM;
+ (BOOL)unsignedLongLongValueForKeyDefaultBm:(NSInteger)BM;
+ (BOOL)floatValueForKeyDefaultBm:(NSInteger)BM;
+ (BOOL)doubleValueForKeyDefaultBm:(NSInteger)BM;
+ (BOOL)integerValueForKeyDefaultBm:(NSInteger)BM;
+ (BOOL)unsignedIntegerValueForKeyDefaultBm:(NSInteger)BM;
+ (BOOL)numberValueForKeyDefaultBm:(NSInteger)BM;
+ (BOOL)stringValueForKeyDefaultBm:(NSInteger)BM;

@end
