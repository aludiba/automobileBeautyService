#import "BMBMRACSerialDisposableNH.h"
@implementation BMBMRACSerialDisposableNH
+ (BOOL)DNisdisposed:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)sMdisposable:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)YTsetdisposable:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)YEserialdisposablewithdisposable:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)XGinit:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)FFinitwithblock:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)DAdealloc:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)mTswapindisposable:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)pOdispose:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
