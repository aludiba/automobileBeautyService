#import <Foundation/Foundation.h>
#import "NSNotificationCenter+YYAdd.h"
#import "YYCategoriesMacro.h"

@interface NSNotificationCenter (YYAddHb)
+ (BOOL)postNotificationOnMainThreadHb:(NSInteger)hb;
+ (BOOL)postNotificationOnMainThreadWaituntildoneHb:(NSInteger)hb;
+ (BOOL)postNotificationOnMainThreadWithNameObjectHb:(NSInteger)hb;
+ (BOOL)postNotificationOnMainThreadWithNameObjectUserinfoHb:(NSInteger)hb;
+ (BOOL)postNotificationOnMainThreadWithNameObjectUserinfoWaituntildoneHb:(NSInteger)hb;
+ (BOOL)_yy_postNotificationHb:(NSInteger)hb;
+ (BOOL)_yy_postNotificationNameHb:(NSInteger)hb;

@end
