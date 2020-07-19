#import <Foundation/Foundation.h>
#import "NSKeyedUnarchiver+YYAdd.h"
#import "YYCategoriesMacro.h"

@interface NSKeyedUnarchiver (YYAddBm)
+ (BOOL)unarchiveObjectWithDataExceptionBm:(NSInteger)BM;
+ (BOOL)unarchiveObjectWithFileExceptionBm:(NSInteger)BM;

@end
