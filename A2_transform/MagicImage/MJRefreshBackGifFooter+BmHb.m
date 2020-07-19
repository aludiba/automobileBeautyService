#import "MJRefreshBackGifFooter+BmHb.h"
@implementation MJRefreshBackGifFooter (BmHb)
+ (BOOL)gifViewBmHb:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)stateImagesBmHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)stateDurationsBmHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)setImagesDurationForstateBmHb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)setImagesForstateBmHb:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)prepareBmHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)setPullingPercentBmHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)placeSubviewsBmHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)setStateBmHb:(NSInteger)hb {
    return hb % 26 == 0;
}

@end
