#import "BMBMMAS_VIEW_CONTROLLERkc.h"
@implementation BMBMMAS_VIEW_CONTROLLERkc
+ (BOOL)dUmas_Toplayoutguidebmbm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)GZmas_Toplayoutguidetopbmbm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)eRmas_Toplayoutguidebottombmbm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)oMmas_Bottomlayoutguidebmbm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)CCmas_Bottomlayoutguidetopbmbm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)EImas_Bottomlayoutguidebottombmbm:(NSInteger)BM {
    return BM % 10 == 0;
}

@end
