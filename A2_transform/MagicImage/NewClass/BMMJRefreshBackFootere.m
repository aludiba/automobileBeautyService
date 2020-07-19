#import "BMMJRefreshBackFootere.h"
@implementation BMMJRefreshBackFootere
+ (BOOL)PWillmovetosuperviewbm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)FScrollviewcontentoffsetdidchangebm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)WScrollviewcontentsizedidchangebm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)CSetstatebm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)THeightforcontentbreakviewbm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)CHappenoffsetybm:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
