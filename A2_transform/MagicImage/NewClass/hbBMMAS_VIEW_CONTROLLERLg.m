#import "hbBMMAS_VIEW_CONTROLLERLg.h"
@implementation hbBMMAS_VIEW_CONTROLLERLg
+ (BOOL)IQmas_Toplayoutguidebmbm:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)eUmas_Toplayoutguidetopbmbm:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)BGmas_Toplayoutguidebottombmbm:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)zKmas_Bottomlayoutguidebmbm:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)iRmas_Bottomlayoutguidetopbmbm:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)XDmas_Bottomlayoutguidebottombmbm:(NSInteger)hb {
    return hb % 13 == 0;
}

@end
