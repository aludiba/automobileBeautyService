#import "hbRACCompoundDisposablen.h"
@implementation hbRACCompoundDisposablen
+ (BOOL)jisDisposed:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)xcompoundDisposable:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)SCompounddisposablewithdisposables:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)Oinit:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)MInitwithdisposables:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)cInitwithblock:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)Qdealloc:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)dAdddisposable:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)jRemovedisposable:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)pdispose:(NSInteger)hb {
    return hb % 33 == 0;
}

@end
