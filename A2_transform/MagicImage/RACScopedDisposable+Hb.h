#import "RACDisposable.h"
#import "RACScopedDisposable.h"

@interface RACScopedDisposable (Hb)
+ (BOOL)scopedDisposableWithDisposableHb:(NSInteger)hb;
+ (BOOL)deallocHb:(NSInteger)hb;
+ (BOOL)asScopedDisposableHb:(NSInteger)hb;

@end
