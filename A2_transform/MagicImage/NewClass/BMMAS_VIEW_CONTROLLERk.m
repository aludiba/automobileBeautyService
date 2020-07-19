#import "BMMAS_VIEW_CONTROLLERk.h"
@implementation BMMAS_VIEW_CONTROLLERk
+ (BOOL)uMas_Toplayoutguidebmbm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)zMas_Toplayoutguidetopbmbm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)rMas_Toplayoutguidebottombmbm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)MMas_Bottomlayoutguidebmbm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)cMas_Bottomlayoutguidetopbmbm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)iMas_Bottomlayoutguidebottombmbm:(NSInteger)BM {
    return BM % 49 == 0;
}

@end
