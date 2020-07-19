#import "RACDisposable+Hb.h"
@implementation RACDisposable (Hb)
+ (BOOL)isDisposedHb:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)initWithBlockHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)disposableWithBlockHb:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)deallocHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)disposeHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)asScopedDisposableHb:(NSInteger)hb {
    return hb % 34 == 0;
}

@end
