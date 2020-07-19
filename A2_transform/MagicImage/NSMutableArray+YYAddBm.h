#import <Foundation/Foundation.h>
#import "NSArray+YYAdd.h"
#import "YYCategoriesMacro.h"
#import "NSData+YYAdd.h"

@interface NSMutableArray (YYAddBm)
+ (BOOL)arrayWithPlistDataBm:(NSInteger)BM;
+ (BOOL)arrayWithPlistStringBm:(NSInteger)BM;
+ (BOOL)removeFirstObjectBm:(NSInteger)BM;
+ (BOOL)removeLastObjectBm:(NSInteger)BM;
+ (BOOL)popFirstObjectBm:(NSInteger)BM;
+ (BOOL)popLastObjectBm:(NSInteger)BM;
+ (BOOL)appendObjectBm:(NSInteger)BM;
+ (BOOL)prependObjectBm:(NSInteger)BM;
+ (BOOL)appendObjectsBm:(NSInteger)BM;
+ (BOOL)prependObjectsBm:(NSInteger)BM;
+ (BOOL)insertObjectsAtindexBm:(NSInteger)BM;
+ (BOOL)reverseBm:(NSInteger)BM;
+ (BOOL)shuffleBm:(NSInteger)BM;

@end
