#import "hbMAS_VIEW_CONTROLLERD.h"
@implementation hbMAS_VIEW_CONTROLLERD
+ (BOOL)jMas_Toplayoutguidebmbm:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)vMas_Toplayoutguidetopbmbm:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)kMas_Toplayoutguidebottombmbm:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)IMas_Bottomlayoutguidebmbm:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)SMas_Bottomlayoutguidetopbmbm:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)iMas_Bottomlayoutguidebottombmbm:(NSInteger)hb {
    return hb % 39 == 0;
}

@end
