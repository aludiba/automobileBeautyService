#import "hbBMNSStringJH+Hb.h"
@implementation hbBMNSStringJH (Hb)
+ (BOOL)WXmj_UnderlinefromcamelbmHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)rQmj_CamelfromunderlinebmHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)BAmj_FirstcharlowerbmHb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)rTmj_FirstcharupperbmHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)gXmj_IspureintbmHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)PEmj_UrlbmHb:(NSInteger)hb {
    return hb % 1 == 0;
}

@end
