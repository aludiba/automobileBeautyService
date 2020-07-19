#import "BKMIRegisterVC+BmBm.h"
@implementation BKMIRegisterVC (BmBm)
+ (BOOL)viewWillAppearBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)viewWillDisappearBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)viewDidLoadBmBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)BKloginBtnClickBmBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)BKregisterBtnClickBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)BKcloseBtnClickedBmBm:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
