#import "hbMJRefreshAutoFootere.h"
@implementation hbMJRefreshAutoFootere
+ (BOOL)aWillmovetosuperviewbm:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)aSetappearencepercenttriggerautorefreshbm:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)MAppearencepercenttriggerautorefreshbm:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)JPreparebm:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)qScrollviewcontentsizedidchangebm:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)yScrollviewcontentoffsetdidchangebm:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)hScrollviewpanstatedidchangebm:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)vBeginrefreshingbm:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)bSetstatebm:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)mSethiddenbm:(NSInteger)hb {
    return hb % 9 == 0;
}

@end
