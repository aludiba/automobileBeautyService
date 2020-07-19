#import <Foundation/Foundation.h>
#import "NSNotificationCenter+YYAdd.h"
#import "YYCategoriesMacro.h"

@interface NSNotificationCenter (YYAddBm)
+ (BOOL)postNotificationOnMainThreadBm:(NSInteger)BM;
+ (BOOL)postNotificationOnMainThreadWaituntildoneBm:(NSInteger)BM;
+ (BOOL)postNotificationOnMainThreadWithNameObjectBm:(NSInteger)BM;
+ (BOOL)postNotificationOnMainThreadWithNameObjectUserinfoBm:(NSInteger)BM;
+ (BOOL)postNotificationOnMainThreadWithNameObjectUserinfoWaituntildoneBm:(NSInteger)BM;
+ (BOOL)_yy_postNotificationBm:(NSInteger)BM;
+ (BOOL)_yy_postNotificationNameBm:(NSInteger)BM;

@end
