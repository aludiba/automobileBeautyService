#import "hbIQTitleBarButtonItemt.h"
@implementation hbIQTitleBarButtonItemt
+ (BOOL)rInitwithtitlebmbm:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)PSettitlefontbmbm:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)FSettitlebmbm:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)VSettitlecolorbmbm:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)lSetselectabletitlecolorbmbm:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)LSetinvocationbmbm:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)YDeallocbmbm:(NSInteger)hb {
    return hb % 5 == 0;
}

@end
