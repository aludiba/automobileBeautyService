#import "MJRefreshBackGifFooter+BmBm.h"
@implementation MJRefreshBackGifFooter (BmBm)
+ (BOOL)gifViewBmBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)stateImagesBmBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)stateDurationsBmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)setImagesDurationForstateBmBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)setImagesForstateBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)prepareBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)setPullingPercentBmBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)placeSubviewsBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)setStateBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}

@end
