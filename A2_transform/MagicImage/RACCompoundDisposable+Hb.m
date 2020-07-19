#import "RACCompoundDisposable+Hb.h"
@implementation RACCompoundDisposable (Hb)
+ (BOOL)isDisposedHb:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)compoundDisposableHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)compoundDisposableWithDisposablesHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)initWithDisposablesHb:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)initWithBlockHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)deallocHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)addDisposableHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)removeDisposableHb:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)disposeHb:(NSInteger)hb {
    return hb % 39 == 0;
}

@end
