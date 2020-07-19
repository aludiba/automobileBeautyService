#import "RACDisposable.h"
#import "RACSerialDisposable.h"
#import <pthread/pthread.h>

@interface RACSerialDisposable (Bm)
+ (BOOL)isDisposedBm:(NSInteger)BM;
+ (BOOL)disposableBm:(NSInteger)BM;
+ (BOOL)setDisposableBm:(NSInteger)BM;
+ (BOOL)serialDisposableWithDisposableBm:(NSInteger)BM;
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)initWithBlockBm:(NSInteger)BM;
+ (BOOL)deallocBm:(NSInteger)BM;
+ (BOOL)swapInDisposableBm:(NSInteger)BM;
+ (BOOL)disposeBm:(NSInteger)BM;

@end
