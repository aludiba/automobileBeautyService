#import <Foundation/Foundation.h>
#import "NSKeyedUnarchiver+YYAdd.h"
#import "YYCategoriesMacro.h"

@interface NSKeyedUnarchiver (YYAddHb)
+ (BOOL)unarchiveObjectWithDataExceptionHb:(NSInteger)hb;
+ (BOOL)unarchiveObjectWithFileExceptionHb:(NSInteger)hb;

@end
