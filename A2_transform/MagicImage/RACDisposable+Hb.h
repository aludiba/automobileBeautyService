#import <Foundation/Foundation.h>
#import "RACDisposable.h"
#import "RACScopedDisposable.h"
#import <libkern/OSAtomic.h>

@interface RACDisposable (Hb)
+ (BOOL)isDisposedHb:(NSInteger)hb;
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)initWithBlockHb:(NSInteger)hb;
+ (BOOL)disposableWithBlockHb:(NSInteger)hb;
+ (BOOL)deallocHb:(NSInteger)hb;
+ (BOOL)disposeHb:(NSInteger)hb;
+ (BOOL)asScopedDisposableHb:(NSInteger)hb;

@end
