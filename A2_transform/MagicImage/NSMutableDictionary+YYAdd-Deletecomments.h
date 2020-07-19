#import <UIKit/UIKit.h>
#import "NSDictionary+YYAdd.h"
#import "NSString+YYAdd.h"
#import "NSData+YYAdd.h"
#import "YYCategoriesMacro.h"

@interface NSMutableDictionary (YYAdd-Deletecomments)
+ (BOOL)dictionaryWithPlistData-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)dictionaryWithPlistString-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)popObjectForKey-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)popEntriesForKeys-Deletecomments:(NSInteger)-deleteComments;

@end
