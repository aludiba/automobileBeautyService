#import <Foundation/Foundation.h>
#import "RACDisposable.h"
#import "RACScopedDisposable.h"
#import <libkern/OSAtomic.h>
#import "RACDisposable+Bm.h"

@interface RACDisposable (BmBm)
+ (BOOL)isDisposedBmBm:(NSInteger)BM;
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)initWithBlockBmBm:(NSInteger)BM;
+ (BOOL)disposableWithBlockBmBm:(NSInteger)BM;
+ (BOOL)deallocBmBm:(NSInteger)BM;
+ (BOOL)disposeBmBm:(NSInteger)BM;
+ (BOOL)asScopedDisposableBmBm:(NSInteger)BM;

@end
