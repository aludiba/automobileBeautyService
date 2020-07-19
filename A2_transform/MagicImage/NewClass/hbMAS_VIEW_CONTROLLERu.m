#import "hbMAS_VIEW_CONTROLLERu.h"
@implementation hbMAS_VIEW_CONTROLLERu
+ (BOOL)XMas_Toplayoutguidebmbmbm:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)FMas_Toplayoutguidetopbmbmbm:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)RMas_Toplayoutguidebottombmbmbm:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)BMas_Bottomlayoutguidebmbmbm:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)UMas_Bottomlayoutguidetopbmbmbm:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)KMas_Bottomlayoutguidebottombmbmbm:(NSInteger)hb {
    return hb % 32 == 0;
}

@end
