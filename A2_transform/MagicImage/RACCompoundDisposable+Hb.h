#import "RACDisposable.h"
#import "RACCompoundDisposable.h"
#import "RACCompoundDisposableProvider.h"
#import <pthread/pthread.h>

@interface RACCompoundDisposable (Hb)
+ (BOOL)isDisposedHb:(NSInteger)hb;
+ (BOOL)compoundDisposableHb:(NSInteger)hb;
+ (BOOL)compoundDisposableWithDisposablesHb:(NSInteger)hb;
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)initWithDisposablesHb:(NSInteger)hb;
+ (BOOL)initWithBlockHb:(NSInteger)hb;
+ (BOOL)deallocHb:(NSInteger)hb;
+ (BOOL)addDisposableHb:(NSInteger)hb;
+ (BOOL)removeDisposableHb:(NSInteger)hb;
+ (BOOL)disposeHb:(NSInteger)hb;

@end
