#import "BMBMMJRefreshBackFooterey.h"
@implementation BMBMMJRefreshBackFooterey
+ (BOOL)DPwillmovetosuperviewbm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)PFscrollviewcontentoffsetdidchangebm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)WWscrollviewcontentsizedidchangebm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)nCsetstatebm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)cTheightforcontentbreakviewbm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)sChappenoffsetybm:(NSInteger)BM {
    return BM % 46 == 0;
}

@end
