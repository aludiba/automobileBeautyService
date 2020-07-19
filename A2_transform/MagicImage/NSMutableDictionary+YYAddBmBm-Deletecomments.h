#import <UIKit/UIKit.h>
#import "NSDictionary+YYAdd.h"
#import "NSString+YYAdd.h"
#import "NSData+YYAdd.h"
#import "YYCategoriesMacro.h"
#import "NSMutableDictionary+YYAddBm.h"
#import "NSMutableDictionary+YYAddBmBm.h"

@interface NSMutableDictionary (YYAddBmBm-Deletecomments)
+ (BOOL)dictionaryWithPlistDataBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)dictionaryWithPlistStringBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)popObjectForKeyBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)popEntriesForKeysBmBm-Deletecomments:(NSInteger)-deleteComments;

@end
