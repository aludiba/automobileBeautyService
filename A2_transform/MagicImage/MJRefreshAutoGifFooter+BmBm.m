#import "MJRefreshAutoGifFooter+BmBm.h"
@implementation MJRefreshAutoGifFooter (BmBm)
+ (BOOL)gifViewBmBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)stateImagesBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)stateDurationsBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)setImagesDurationForstateBmBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)setImagesForstateBmBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)prepareBmBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)placeSubviewsBmBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)setStateBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}

@end
