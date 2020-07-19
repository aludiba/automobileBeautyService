#import "RACDisposable+BmBm.h"
@implementation RACDisposable (BmBm)
+ (BOOL)isDisposedBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)initWithBlockBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)disposableWithBlockBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)deallocBmBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)disposeBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)asScopedDisposableBmBm:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
