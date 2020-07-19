#import "hbMAS_VIEW_CONTROLLERb.h"
@implementation hbMAS_VIEW_CONTROLLERb
+ (BOOL)YMas_Toplayoutguidebmbmbm:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)GMas_Toplayoutguidetopbmbmbm:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)yMas_Toplayoutguidebottombmbmbm:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)DMas_Bottomlayoutguidebmbmbm:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)XMas_Bottomlayoutguidetopbmbmbm:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)lMas_Bottomlayoutguidebottombmbmbm:(NSInteger)hb {
    return hb % 5 == 0;
}

@end
