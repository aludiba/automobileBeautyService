#import <Foundation/Foundation.h>
#import "NSArray+YYAdd.h"
#import "YYCategoriesMacro.h"
#import "NSData+YYAdd.h"

@interface NSArray (YYAddBm)
+ (BOOL)arrayWithPlistDataBm:(NSInteger)BM;
+ (BOOL)arrayWithPlistStringBm:(NSInteger)BM;
+ (BOOL)plistDataBm:(NSInteger)BM;
+ (BOOL)plistStringBm:(NSInteger)BM;
+ (BOOL)randomObjectBm:(NSInteger)BM;
+ (BOOL)objectOrNilAtIndexBm:(NSInteger)BM;
+ (BOOL)jsonStringEncodedBm:(NSInteger)BM;
+ (BOOL)jsonPrettyStringEncodedBm:(NSInteger)BM;

@end
