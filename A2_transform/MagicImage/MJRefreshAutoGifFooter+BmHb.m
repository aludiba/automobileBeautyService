#import "MJRefreshAutoGifFooter+BmHb.h"
@implementation MJRefreshAutoGifFooter (BmHb)
+ (BOOL)gifViewBmHb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)stateImagesBmHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)stateDurationsBmHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)setImagesDurationForstateBmHb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)setImagesForstateBmHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)prepareBmHb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)placeSubviewsBmHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)setStateBmHb:(NSInteger)hb {
    return hb % 13 == 0;
}

@end
