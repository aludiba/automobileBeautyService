#import <Foundation/Foundation.h>
#import "RACDisposable.h"
#import "RACScopedDisposable.h"
#import <libkern/OSAtomic.h>

@interface RACDisposable (Bm)
+ (BOOL)isDisposedBm:(NSInteger)BM;
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)initWithBlockBm:(NSInteger)BM;
+ (BOOL)disposableWithBlockBm:(NSInteger)BM;
+ (BOOL)deallocBm:(NSInteger)BM;
+ (BOOL)disposeBm:(NSInteger)BM;
+ (BOOL)asScopedDisposableBm:(NSInteger)BM;

@end
