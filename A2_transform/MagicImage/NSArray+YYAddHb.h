#import <Foundation/Foundation.h>
#import "NSArray+YYAdd.h"
#import "YYCategoriesMacro.h"
#import "NSData+YYAdd.h"

@interface NSArray (YYAddHb)
+ (BOOL)arrayWithPlistDataHb:(NSInteger)hb;
+ (BOOL)arrayWithPlistStringHb:(NSInteger)hb;
+ (BOOL)plistDataHb:(NSInteger)hb;
+ (BOOL)plistStringHb:(NSInteger)hb;
+ (BOOL)randomObjectHb:(NSInteger)hb;
+ (BOOL)objectOrNilAtIndexHb:(NSInteger)hb;
+ (BOOL)jsonStringEncodedHb:(NSInteger)hb;
+ (BOOL)jsonPrettyStringEncodedHb:(NSInteger)hb;

@end
