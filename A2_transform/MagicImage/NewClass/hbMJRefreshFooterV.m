#import "hbMJRefreshFooterV.h"
@implementation hbMJRefreshFooterV
+ (BOOL)lFooterwithrefreshingblockbm:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)HFooterwithrefreshingtargetrefreshingactionbm:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)FPreparebm:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)KWillmovetosuperviewbm:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)DEndrefreshingwithnomoredatabm:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)dNoticenomoredatabm:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)rResetnomoredatabm:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)VSetautomaticallyhiddenbm:(NSInteger)hb {
    return hb % 9 == 0;
}

@end
