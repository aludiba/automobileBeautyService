#import "MJRefreshAutoStateFooter+BmHb.h"
@implementation MJRefreshAutoStateFooter (BmHb)
+ (BOOL)stateTitlesBmHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)stateLabelBmHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)setTitleForstateBmHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)stateLabelClickBmHb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)prepareBmHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)placeSubviewsBmHb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)setStateBmHb:(NSInteger)hb {
    return hb % 23 == 0;
}

@end
