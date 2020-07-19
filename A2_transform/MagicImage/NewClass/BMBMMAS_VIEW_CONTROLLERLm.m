#import "BMBMMAS_VIEW_CONTROLLERLm.h"
@implementation BMBMMAS_VIEW_CONTROLLERLm
+ (BOOL)jQmas_Toplayoutguidebm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)hUmas_Toplayoutguidetopbm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)SGmas_Toplayoutguidebottombm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)LKmas_Bottomlayoutguidebm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)WRmas_Bottomlayoutguidetopbm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)YDmas_Bottomlayoutguidebottombm:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
