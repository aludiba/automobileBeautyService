#import "BMMJRefreshBackFootere+Bm.h"
@implementation BMMJRefreshBackFootere (Bm)
+ (BOOL)PWillmovetosuperviewbmBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)FScrollviewcontentoffsetdidchangebmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)WScrollviewcontentsizedidchangebmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)CSetstatebmBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)THeightforcontentbreakviewbmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)CHappenoffsetybmBm:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
