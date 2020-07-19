#import "BKMILoginVC+Bm.h"
@implementation BKMILoginVC (Bm)
+ (BOOL)viewWillAppearBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)viewWillDisappearBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)viewDidLoadBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)BKloginBtnClickBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)BKregisterBtnClickBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)BKvisitorsBtnClickedBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)BKcloseBtnClickedBm:(NSInteger)BM {
    return BM % 50 == 0;
}

@end
