#import "RACDisposable+BmBmBm.h"
@implementation RACDisposable (BmBmBm)
+ (BOOL)isDisposedBmBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)initWithBlockBmBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)disposableWithBlockBmBmBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)deallocBmBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)disposeBmBmBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)asScopedDisposableBmBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
