#import "hbUIScrollViewI.h"
@implementation hbUIScrollViewI
+ (BOOL)LSetshouldignorescrollingadjustmenthb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)XShouldignorescrollingadjustmenthb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)vSetshouldignorecontentinsetadjustmenthb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)CShouldignorecontentinsetadjustmenthb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)ESetshouldrestorescrollviewcontentoffsethb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)QShouldrestorescrollviewcontentoffsethb:(NSInteger)hb {
    return hb % 42 == 0;
}

@end
