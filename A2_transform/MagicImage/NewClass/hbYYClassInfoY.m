#import "hbYYClassInfoY.h"
@implementation hbYYClassInfoY
+ (BOOL)yInitwithclass:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)s_update:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)WsetNeedUpdate:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)mneedUpdate:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)QClassinfowithclass:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)hClassinfowithclassname:(NSInteger)hb {
    return hb % 29 == 0;
}

@end
