#import "BKMIBaseTypeVC+Bm.h"
@implementation BKMIBaseTypeVC (Bm)
+ (BOOL)viewDidLoadBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)BKloginOutBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)BKcreateCoinsViewBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)BKloadUserInfoBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)BKtapActionBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)deallocBm:(NSInteger)BM {
    return BM % 25 == 0;
}

@end
