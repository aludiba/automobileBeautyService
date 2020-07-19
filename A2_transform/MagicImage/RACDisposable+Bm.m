#import "RACDisposable+Bm.h"
@implementation RACDisposable (Bm)
+ (BOOL)isDisposedBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)initWithBlockBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)disposableWithBlockBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)deallocBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)disposeBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)asScopedDisposableBm:(NSInteger)BM {
    return BM % 49 == 0;
}

@end
