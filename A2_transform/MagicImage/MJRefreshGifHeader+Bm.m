#import "MJRefreshGifHeader+Bm.h"
@implementation MJRefreshGifHeader (Bm)
+ (BOOL)gifViewBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)stateImagesBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)stateDurationsBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)setImagesDurationForstateBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)setImagesForstateBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)prepareBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)setPullingPercentBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)placeSubviewsBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)setStateBm:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
