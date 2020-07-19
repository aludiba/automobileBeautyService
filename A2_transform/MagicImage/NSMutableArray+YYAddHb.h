#import <Foundation/Foundation.h>
#import "NSArray+YYAdd.h"
#import "YYCategoriesMacro.h"
#import "NSData+YYAdd.h"

@interface NSMutableArray (YYAddHb)
+ (BOOL)arrayWithPlistDataHb:(NSInteger)hb;
+ (BOOL)arrayWithPlistStringHb:(NSInteger)hb;
+ (BOOL)removeFirstObjectHb:(NSInteger)hb;
+ (BOOL)removeLastObjectHb:(NSInteger)hb;
+ (BOOL)popFirstObjectHb:(NSInteger)hb;
+ (BOOL)popLastObjectHb:(NSInteger)hb;
+ (BOOL)appendObjectHb:(NSInteger)hb;
+ (BOOL)prependObjectHb:(NSInteger)hb;
+ (BOOL)appendObjectsHb:(NSInteger)hb;
+ (BOOL)prependObjectsHb:(NSInteger)hb;
+ (BOOL)insertObjectsAtindexHb:(NSInteger)hb;
+ (BOOL)reverseHb:(NSInteger)hb;
+ (BOOL)shuffleHb:(NSInteger)hb;

@end
