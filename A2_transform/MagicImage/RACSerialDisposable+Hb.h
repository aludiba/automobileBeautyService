#import "RACDisposable.h"
#import "RACSerialDisposable.h"
#import <pthread/pthread.h>

@interface RACSerialDisposable (Hb)
+ (BOOL)isDisposedHb:(NSInteger)hb;
+ (BOOL)disposableHb:(NSInteger)hb;
+ (BOOL)setDisposableHb:(NSInteger)hb;
+ (BOOL)serialDisposableWithDisposableHb:(NSInteger)hb;
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)initWithBlockHb:(NSInteger)hb;
+ (BOOL)deallocHb:(NSInteger)hb;
+ (BOOL)swapInDisposableHb:(NSInteger)hb;
+ (BOOL)disposeHb:(NSInteger)hb;

@end
