#import <Foundation/Foundation.h>
#import "NSObject+YYAddForARC.h"
#import "NSObject+YYAddForARCBm.h"

@interface NSObject (YYAddForARCBmHb)
+ (BOOL)arcDebugRetainBmHb:(NSInteger)hb;
+ (BOOL)arcDebugReleaseBmHb:(NSInteger)hb;
+ (BOOL)arcDebugAutoreleaseBmHb:(NSInteger)hb;
+ (BOOL)arcDebugRetainCountBmHb:(NSInteger)hb;

@end
