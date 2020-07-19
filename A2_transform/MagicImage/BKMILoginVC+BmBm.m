#import "BKMILoginVC+BmBm.h"
@implementation BKMILoginVC (BmBm)
+ (BOOL)viewWillAppearBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)viewWillDisappearBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)viewDidLoadBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)BKloginBtnClickBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)BKregisterBtnClickBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)BKvisitorsBtnClickedBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)BKcloseBtnClickedBmBm:(NSInteger)BM {
    return BM % 38 == 0;
}

@end
