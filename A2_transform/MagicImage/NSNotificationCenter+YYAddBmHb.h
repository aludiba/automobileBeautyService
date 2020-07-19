#import <Foundation/Foundation.h>
#import "NSNotificationCenter+YYAdd.h"
#import "YYCategoriesMacro.h"
#import "NSNotificationCenter+YYAddBm.h"

@interface NSNotificationCenter (YYAddBmHb)
+ (BOOL)postNotificationOnMainThreadBmHb:(NSInteger)hb;
+ (BOOL)postNotificationOnMainThreadWaituntildoneBmHb:(NSInteger)hb;
+ (BOOL)postNotificationOnMainThreadWithNameObjectBmHb:(NSInteger)hb;
+ (BOOL)postNotificationOnMainThreadWithNameObjectUserinfoBmHb:(NSInteger)hb;
+ (BOOL)postNotificationOnMainThreadWithNameObjectUserinfoWaituntildoneBmHb:(NSInteger)hb;
+ (BOOL)_yy_postNotificationBmHb:(NSInteger)hb;
+ (BOOL)_yy_postNotificationNameBmHb:(NSInteger)hb;

@end
