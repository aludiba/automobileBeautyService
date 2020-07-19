#import <Foundation/Foundation.h>
#import "RACDisposable.h"
#import "RACScopedDisposable.h"
#import <libkern/OSAtomic.h>
#import "RACDisposable+Bm.h"
#import "RACDisposable+BmBm.h"

@interface RACDisposable (BmBmBm)
+ (BOOL)isDisposedBmBmBm:(NSInteger)BM;
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)initWithBlockBmBmBm:(NSInteger)BM;
+ (BOOL)disposableWithBlockBmBmBm:(NSInteger)BM;
+ (BOOL)deallocBmBmBm:(NSInteger)BM;
+ (BOOL)disposeBmBmBm:(NSInteger)BM;
+ (BOOL)asScopedDisposableBmBmBm:(NSInteger)BM;

@end
