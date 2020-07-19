#import "hbMJRefreshAutoFooterC.h"
@implementation hbMJRefreshAutoFooterC
+ (BOOL)yWillmovetosuperviewbmhb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)cSetappearencepercenttriggerautorefreshbmhb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)JAppearencepercenttriggerautorefreshbmhb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)JPreparebmhb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)QScrollviewcontentsizedidchangebmhb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)iScrollviewcontentoffsetdidchangebmhb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)RScrollviewpanstatedidchangebmhb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)yBeginrefreshingbmhb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)ASetstatebmhb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)lSethiddenbmhb:(NSInteger)hb {
    return hb % 24 == 0;
}

@end
