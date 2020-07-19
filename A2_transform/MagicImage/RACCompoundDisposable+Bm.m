#import "RACCompoundDisposable+Bm.h"
@implementation RACCompoundDisposable (Bm)
+ (BOOL)isDisposedBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)compoundDisposableBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)compoundDisposableWithDisposablesBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)initWithDisposablesBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)initWithBlockBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)deallocBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)addDisposableBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)removeDisposableBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)disposeBm:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
