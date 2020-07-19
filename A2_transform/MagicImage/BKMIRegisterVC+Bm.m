#import "BKMIRegisterVC+Bm.h"
@implementation BKMIRegisterVC (Bm)
+ (BOOL)viewWillAppearBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)viewWillDisappearBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)viewDidLoadBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)BKloginBtnClickBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)BKregisterBtnClickBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)BKcloseBtnClickedBm:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
