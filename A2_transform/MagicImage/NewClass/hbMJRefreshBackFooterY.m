#import "hbMJRefreshBackFooterY.h"
@implementation hbMJRefreshBackFooterY
+ (BOOL)xWillmovetosuperviewbm:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)kScrollviewcontentoffsetdidchangebm:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)PScrollviewcontentsizedidchangebm:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)ZSetstatebm:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)yHeightforcontentbreakviewbm:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)OHappenoffsetybm:(NSInteger)hb {
    return hb % 30 == 0;
}

@end
