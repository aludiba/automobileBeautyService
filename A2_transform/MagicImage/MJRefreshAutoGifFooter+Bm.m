#import "MJRefreshAutoGifFooter+Bm.h"
@implementation MJRefreshAutoGifFooter (Bm)
+ (BOOL)gifViewBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)stateImagesBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)stateDurationsBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)setImagesDurationForstateBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)setImagesForstateBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)prepareBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)placeSubviewsBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)setStateBm:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
