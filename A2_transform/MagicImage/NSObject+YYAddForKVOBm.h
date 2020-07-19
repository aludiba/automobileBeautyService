#import <Foundation/Foundation.h>
#import "NSObject+YYAddForKVO.h"
#import "YYCategoriesMacro.h"
#import <objc/objc.h>
#import <objc/runtime.h>

@interface NSObject (YYAddForKVOBm)
+ (BOOL)addObserverBlockForKeyPathBlockBm:(NSInteger)BM;
+ (BOOL)removeObserverBlocksForKeyPathBm:(NSInteger)BM;
+ (BOOL)removeObserverBlocksBm:(NSInteger)BM;
+ (BOOL)_yy_allNSObjectObserverBlocksBm:(NSInteger)BM;

@end
