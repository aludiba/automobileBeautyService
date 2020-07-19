#import "BKMILoginVC+BmHb.h"
@implementation BKMILoginVC (BmHb)
+ (BOOL)viewWillAppearBmHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)viewWillDisappearBmHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)viewDidLoadBmHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)BKloginBtnClickBmHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)BKregisterBtnClickBmHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)BKvisitorsBtnClickedBmHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)BKcloseBtnClickedBmHb:(NSInteger)hb {
    return hb % 32 == 0;
}

@end
