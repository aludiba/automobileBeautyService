#import "RACDisposable.h"
#import "RACCompoundDisposable.h"
#import "RACCompoundDisposableProvider.h"
#import <pthread/pthread.h>
#import "RACCompoundDisposable+Bm.h"

@interface RACCompoundDisposable (BmHb)
+ (BOOL)isDisposedBmHb:(NSInteger)hb;
+ (BOOL)compoundDisposableBmHb:(NSInteger)hb;
+ (BOOL)compoundDisposableWithDisposablesBmHb:(NSInteger)hb;
+ (BOOL)initBmHb:(NSInteger)hb;
+ (BOOL)initWithDisposablesBmHb:(NSInteger)hb;
+ (BOOL)initWithBlockBmHb:(NSInteger)hb;
+ (BOOL)deallocBmHb:(NSInteger)hb;
+ (BOOL)addDisposableBmHb:(NSInteger)hb;
+ (BOOL)removeDisposableBmHb:(NSInteger)hb;
+ (BOOL)disposeBmHb:(NSInteger)hb;

@end
