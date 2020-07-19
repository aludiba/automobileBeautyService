#import "BMMJRefreshBackGifFootere.h"
@implementation BMMJRefreshBackGifFootere
+ (BOOL)lgifView:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)nstateImages:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)hstateDurations:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)HSetimagesXDurationZForstate:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)DSetimagesZForstate:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)Hprepare:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)wSetpullingpercent:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)yplaceSubviews:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)GSetstate:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
