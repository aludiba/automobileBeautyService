#import <Foundation/Foundation.h>
#import "NSObject+YYAddForKVO.h"
#import "YYCategoriesMacro.h"
#import <objc/objc.h>
#import <objc/runtime.h>

@interface NSObject (YYAddForKVOHb)
+ (BOOL)addObserverBlockForKeyPathBlockHb:(NSInteger)hb;
+ (BOOL)removeObserverBlocksForKeyPathHb:(NSInteger)hb;
+ (BOOL)removeObserverBlocksHb:(NSInteger)hb;
+ (BOOL)_yy_allNSObjectObserverBlocksHb:(NSInteger)hb;

@end
