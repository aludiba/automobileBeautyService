#import "MJRefreshGifHeader+BmBm.h"
@implementation MJRefreshGifHeader (BmBm)
+ (BOOL)gifViewBmBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)stateImagesBmBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)stateDurationsBmBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)setImagesDurationForstateBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)setImagesForstateBmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)prepareBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)setPullingPercentBmBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)placeSubviewsBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)setStateBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}

@end
