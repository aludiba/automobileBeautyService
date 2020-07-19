#import "RACCompoundDisposable+BmBm.h"
@implementation RACCompoundDisposable (BmBm)
+ (BOOL)isDisposedBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)compoundDisposableBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)compoundDisposableWithDisposablesBmBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)initWithDisposablesBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)initWithBlockBmBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)deallocBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)addDisposableBmBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)removeDisposableBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)disposeBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}

@end
