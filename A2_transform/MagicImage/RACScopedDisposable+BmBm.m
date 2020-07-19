#import "RACScopedDisposable+BmBm.h"
@implementation RACScopedDisposable (BmBm)
+ (BOOL)scopedDisposableWithDisposableBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)deallocBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)asScopedDisposableBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}

@end
