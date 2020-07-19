#import "RACDisposable.h"
#import "RACCompoundDisposable.h"
#import "RACCompoundDisposableProvider.h"
#import <pthread/pthread.h>

@interface RACCompoundDisposable (Bm)
+ (BOOL)isDisposedBm:(NSInteger)BM;
+ (BOOL)compoundDisposableBm:(NSInteger)BM;
+ (BOOL)compoundDisposableWithDisposablesBm:(NSInteger)BM;
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)initWithDisposablesBm:(NSInteger)BM;
+ (BOOL)initWithBlockBm:(NSInteger)BM;
+ (BOOL)deallocBm:(NSInteger)BM;
+ (BOOL)addDisposableBm:(NSInteger)BM;
+ (BOOL)removeDisposableBm:(NSInteger)BM;
+ (BOOL)disposeBm:(NSInteger)BM;

@end
