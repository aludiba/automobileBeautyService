#import "BMAppDelegateE+Bm.h"
@implementation BMAppDelegateE (Bm)
+ (BOOL)nApplicationhDidfinishlaunchingwithoptionsBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)JApplicationwillresignactiveBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)qApplicationdidenterbackgroundBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)QApplicationwillenterforegroundBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)iApplicationdidbecomeactiveBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)rApplicationwillterminateBm:(NSInteger)BM {
    return BM % 10 == 0;
}

@end
