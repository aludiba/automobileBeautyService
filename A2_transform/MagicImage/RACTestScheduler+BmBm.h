#import "RACScheduler.h"
#import "RACTestScheduler.h"
#import <ReactiveObjC/RACEXTScope.h>
#import "RACCompoundDisposable.h"
#import "RACDisposable.h"
#import "RACScheduler+Private.h"
#import "RACTestScheduler+Bm.h"

@interface RACTestScheduler (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)deallocBmBm:(NSInteger)BM;
+ (BOOL)stepBmBm:(NSInteger)BM;
+ (BOOL)stepBmBm:(NSInteger)BM;
+ (BOOL)stepAllBmBm:(NSInteger)BM;
+ (BOOL)scheduleBmBm:(NSInteger)BM;
+ (BOOL)afterScheduleBmBm:(NSInteger)BM;
+ (BOOL)afterRepeatingeveryWithleewayScheduleBmBm:(NSInteger)BM;

@end
