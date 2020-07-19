#import "BMMJRefreshGifHeaderR.h"
@implementation BMMJRefreshGifHeaderR
+ (BOOL)SgifView:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)ustateImages:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)lstateDurations:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)RSetimagesgDurationcForstate:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)OSetimagesFForstate:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)dprepare:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)mSetpullingpercent:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)VplaceSubviews:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)YSetstate:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
