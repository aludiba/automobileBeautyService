#import "RACSerialDisposable+Bm.h"
@implementation RACSerialDisposable (Bm)
+ (BOOL)isDisposedBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)disposableBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)setDisposableBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)serialDisposableWithDisposableBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)initWithBlockBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)deallocBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)swapInDisposableBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)disposeBm:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
