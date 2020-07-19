#import "hbIQTitleBarButtonIteml.h"
@implementation hbIQTitleBarButtonIteml
+ (BOOL)zInitwithtitle:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)ISettitlefont:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)ISettitle:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)FSettitlecolor:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)kSetselectabletitlecolor:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)QSetinvocation:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)tdealloc:(NSInteger)hb {
    return hb % 4 == 0;
}

@end
