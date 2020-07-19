#import "BMNSStringJ+BmHb.h"
@implementation BMNSStringJ (BmHb)
+ (BOOL)Xmj_underlineFromCamelBmHb:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)qmj_camelFromUnderlineBmHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)amj_firstCharLowerBmHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)tmj_firstCharUpperBmHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)Xmj_isPureIntBmHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)emj_urlBmHb:(NSInteger)hb {
    return hb % 29 == 0;
}

@end
