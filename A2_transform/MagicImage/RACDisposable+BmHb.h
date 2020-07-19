#import <Foundation/Foundation.h>
#import "RACDisposable.h"
#import "RACScopedDisposable.h"
#import <libkern/OSAtomic.h>
#import "RACDisposable+Bm.h"

@interface RACDisposable (BmHb)
+ (BOOL)isDisposedBmHb:(NSInteger)hb;
+ (BOOL)initBmHb:(NSInteger)hb;
+ (BOOL)initWithBlockBmHb:(NSInteger)hb;
+ (BOOL)disposableWithBlockBmHb:(NSInteger)hb;
+ (BOOL)deallocBmHb:(NSInteger)hb;
+ (BOOL)disposeBmHb:(NSInteger)hb;
+ (BOOL)asScopedDisposableBmHb:(NSInteger)hb;

@end
