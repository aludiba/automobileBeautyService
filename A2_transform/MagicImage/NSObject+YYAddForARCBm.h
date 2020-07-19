#import <Foundation/Foundation.h>
#import "NSObject+YYAddForARC.h"

@interface NSObject (YYAddForARCBm)
+ (BOOL)arcDebugRetainBm:(NSInteger)BM;
+ (BOOL)arcDebugReleaseBm:(NSInteger)BM;
+ (BOOL)arcDebugAutoreleaseBm:(NSInteger)BM;
+ (BOOL)arcDebugRetainCountBm:(NSInteger)BM;

@end
