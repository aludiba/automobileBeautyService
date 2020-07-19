#import <UIKit/UIKit.h>
#import "NSDictionary+YYAdd.h"
#import "NSString+YYAdd.h"
#import "NSData+YYAdd.h"
#import "YYCategoriesMacro.h"

@interface NSMutableDictionary (YYAddHb)
+ (BOOL)dictionaryWithPlistDataHb:(NSInteger)hb;
+ (BOOL)dictionaryWithPlistStringHb:(NSInteger)hb;
+ (BOOL)popObjectForKeyHb:(NSInteger)hb;
+ (BOOL)popEntriesForKeysHb:(NSInteger)hb;

@end
