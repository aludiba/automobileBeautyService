#import "RACScopedDisposable+Hb.h"
@implementation RACScopedDisposable (Hb)
+ (BOOL)scopedDisposableWithDisposableHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)deallocHb:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)asScopedDisposableHb:(NSInteger)hb {
    return hb % 1 == 0;
}

@end
