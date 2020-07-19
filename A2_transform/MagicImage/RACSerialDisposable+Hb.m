#import "RACSerialDisposable+Hb.h"
@implementation RACSerialDisposable (Hb)
+ (BOOL)isDisposedHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)disposableHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)setDisposableHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)serialDisposableWithDisposableHb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)initWithBlockHb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)deallocHb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)swapInDisposableHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)disposeHb:(NSInteger)hb {
    return hb % 7 == 0;
}

@end
