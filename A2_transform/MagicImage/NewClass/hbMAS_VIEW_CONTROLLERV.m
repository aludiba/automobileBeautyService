#import "hbMAS_VIEW_CONTROLLERV.h"
@implementation hbMAS_VIEW_CONTROLLERV
+ (BOOL)PMas_Toplayoutguidebmbmbmhb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)xMas_Toplayoutguidetopbmbmbmhb:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)LMas_Toplayoutguidebottombmbmbmhb:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)nMas_Bottomlayoutguidebmbmbmhb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)LMas_Bottomlayoutguidetopbmbmbmhb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)BMas_Bottomlayoutguidebottombmbmbmhb:(NSInteger)hb {
    return hb % 21 == 0;
}

@end
