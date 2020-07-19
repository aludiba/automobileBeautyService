#import "MJRefreshBackGifFooter+Bm.h"
@implementation MJRefreshBackGifFooter (Bm)
+ (BOOL)gifViewBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)stateImagesBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)stateDurationsBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)setImagesDurationForstateBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)setImagesForstateBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)prepareBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)setPullingPercentBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)placeSubviewsBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)setStateBm:(NSInteger)BM {
    return BM % 49 == 0;
}

@end
