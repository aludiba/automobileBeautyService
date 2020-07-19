#import "BKMIRegisterVC+BmHb.h"
@implementation BKMIRegisterVC (BmHb)
+ (BOOL)viewWillAppearBmHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)viewWillDisappearBmHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)viewDidLoadBmHb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)BKloginBtnClickBmHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)BKregisterBtnClickBmHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)BKcloseBtnClickedBmHb:(NSInteger)hb {
    return hb % 34 == 0;
}

@end
