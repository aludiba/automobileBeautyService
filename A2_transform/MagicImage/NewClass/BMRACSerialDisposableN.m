#import "BMRACSerialDisposableN.h"
@implementation BMRACSerialDisposableN
+ (BOOL)nisDisposed:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)Mdisposable:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)TSetdisposable:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)ESerialdisposablewithdisposable:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)Ginit:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)FInitwithblock:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)Adealloc:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)tSwapindisposable:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)odispose:(NSInteger)BM {
    return BM % 49 == 0;
}

@end
