#import "BKMIRegisterVC+BmBmHb.h"
@implementation BKMIRegisterVC (BmBmHb)
+ (BOOL)viewWillAppearBmBmHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)viewWillDisappearBmBmHb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)viewDidLoadBmBmHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)BKloginBtnClickBmBmHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)BKregisterBtnClickBmBmHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)BKcloseBtnClickedBmBmHb:(NSInteger)hb {
    return hb % 1 == 0;
}

@end
