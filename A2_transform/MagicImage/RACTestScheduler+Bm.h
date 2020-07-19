#import "RACScheduler.h"
#import "RACTestScheduler.h"
#import <ReactiveObjC/RACEXTScope.h>
#import "RACCompoundDisposable.h"
#import "RACDisposable.h"
#import "RACScheduler+Private.h"

@interface RACTestScheduler (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)deallocBm:(NSInteger)BM;
+ (BOOL)stepBm:(NSInteger)BM;
+ (BOOL)stepBm:(NSInteger)BM;
+ (BOOL)stepAllBm:(NSInteger)BM;
+ (BOOL)scheduleBm:(NSInteger)BM;
+ (BOOL)afterScheduleBm:(NSInteger)BM;
+ (BOOL)afterRepeatingeveryWithleewayScheduleBm:(NSInteger)BM;

@end
