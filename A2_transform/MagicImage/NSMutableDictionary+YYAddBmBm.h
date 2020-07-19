#import <UIKit/UIKit.h>
#import "NSDictionary+YYAdd.h"
#import "NSString+YYAdd.h"
#import "NSData+YYAdd.h"
#import "YYCategoriesMacro.h"
#import "NSMutableDictionary+YYAddBm.h"

@interface NSMutableDictionary (YYAddBmBm)
+ (BOOL)dictionaryWithPlistDataBmBm:(NSInteger)BM;
+ (BOOL)dictionaryWithPlistStringBmBm:(NSInteger)BM;
+ (BOOL)popObjectForKeyBmBm:(NSInteger)BM;
+ (BOOL)popEntriesForKeysBmBm:(NSInteger)BM;

@end
