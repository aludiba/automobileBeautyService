#import "hbRACDisposableY.h"
@implementation hbRACDisposableY
+ (BOOL)IisDisposed:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)jinit:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)uInitwithblock:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)QDisposablewithblock:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)wdealloc:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)ndispose:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)gasScopedDisposable:(NSInteger)hb {
    return hb % 32 == 0;
}

@end
