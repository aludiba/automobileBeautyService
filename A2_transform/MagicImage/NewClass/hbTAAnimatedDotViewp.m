#import "hbTAAnimatedDotViewP.h"
@implementation hbTAAnimatedDotViewP
+ (BOOL)Ginit:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)rInitwithframe:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)hInitwithcoder:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)gSetdotcolor:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)Xinitialization:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)CChangeactivitystate:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)NanimateToActiveState:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)EanimateToDeactiveState:(NSInteger)hb {
    return hb % 22 == 0;
}

@end
