#import "RACScopedDisposable+Bm.h"
@implementation RACScopedDisposable (Bm)
+ (BOOL)scopedDisposableWithDisposableBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)deallocBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)asScopedDisposableBm:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
