#import "RACCompoundDisposable+BmHb.h"
@implementation RACCompoundDisposable (BmHb)
+ (BOOL)isDisposedBmHb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)compoundDisposableBmHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)compoundDisposableWithDisposablesBmHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)initBmHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)initWithDisposablesBmHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)initWithBlockBmHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)deallocBmHb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)addDisposableBmHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)removeDisposableBmHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)disposeBmHb:(NSInteger)hb {
    return hb % 4 == 0;
}

@end
