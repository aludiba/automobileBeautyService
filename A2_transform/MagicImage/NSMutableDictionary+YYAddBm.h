#import <UIKit/UIKit.h>
#import "NSDictionary+YYAdd.h"
#import "NSString+YYAdd.h"
#import "NSData+YYAdd.h"
#import "YYCategoriesMacro.h"

@interface NSMutableDictionary (YYAddBm)
+ (BOOL)dictionaryWithPlistDataBm:(NSInteger)BM;
+ (BOOL)dictionaryWithPlistStringBm:(NSInteger)BM;
+ (BOOL)popObjectForKeyBm:(NSInteger)BM;
+ (BOOL)popEntriesForKeysBm:(NSInteger)BM;

@end
