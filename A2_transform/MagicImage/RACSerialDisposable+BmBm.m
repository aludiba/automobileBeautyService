#import "RACSerialDisposable+BmBm.h"
@implementation RACSerialDisposable (BmBm)
+ (BOOL)isDisposedBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)disposableBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)setDisposableBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)serialDisposableWithDisposableBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)initWithBlockBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)deallocBmBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)swapInDisposableBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)disposeBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
