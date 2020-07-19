#import "MJRefreshBackStateFooter+BmBmHb.h"
@implementation MJRefreshBackStateFooter (BmBmHb)
+ (BOOL)stateTitlesBmBmHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)stateLabelBmBmHb:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)setTitleForstateBmBmHb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)titleForStateBmBmHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)prepareBmBmHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)placeSubviewsBmBmHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)setStateBmBmHb:(NSInteger)hb {
    return hb % 38 == 0;
}

@end
