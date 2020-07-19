#import "hbIQTitleBarButtonItemX.h"
@implementation hbIQTitleBarButtonItemX
+ (BOOL)GInitwithtitlebm:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)qSettitlefontbm:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)BSettitlebm:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)SSettitlecolorbm:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)qSetselectabletitlecolorbm:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)YSetinvocationbm:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)LDeallocbm:(NSInteger)hb {
    return hb % 10 == 0;
}

@end
