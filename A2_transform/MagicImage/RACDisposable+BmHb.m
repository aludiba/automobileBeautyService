#import "RACDisposable+BmHb.h"
@implementation RACDisposable (BmHb)
+ (BOOL)isDisposedBmHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)initBmHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)initWithBlockBmHb:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)disposableWithBlockBmHb:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)deallocBmHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)disposeBmHb:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)asScopedDisposableBmHb:(NSInteger)hb {
    return hb % 15 == 0;
}

@end
