#import <Foundation/Foundation.h>
#import "RACKVOProxy.h"

@interface RACKVOProxy (Hb)
+ (BOOL)sharedProxyHb:(NSInteger)hb;
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)addObserverForcontextHb:(NSInteger)hb;
+ (BOOL)removeObserverForcontextHb:(NSInteger)hb;
+ (BOOL)observeValueForKeyPathOfobjectChangeContextHb:(NSInteger)hb;

@end
