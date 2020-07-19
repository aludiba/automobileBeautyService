#import <Foundation/Foundation.h>
#import "NSObject+YYAddForARC.h"

@interface NSObject (YYAddForARCHb)
+ (BOOL)arcDebugRetainHb:(NSInteger)hb;
+ (BOOL)arcDebugReleaseHb:(NSInteger)hb;
+ (BOOL)arcDebugAutoreleaseHb:(NSInteger)hb;
+ (BOOL)arcDebugRetainCountHb:(NSInteger)hb;

@end
