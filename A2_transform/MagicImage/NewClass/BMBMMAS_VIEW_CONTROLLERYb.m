#import "BMBMMAS_VIEW_CONTROLLERYb.h"
@implementation BMBMMAS_VIEW_CONTROLLERYb
+ (BOOL)uBmas_Toplayoutguidebm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)tTmas_Toplayoutguidetopbm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)iTmas_Toplayoutguidebottombm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)fMmas_Bottomlayoutguidebm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)jBmas_Bottomlayoutguidetopbm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)fLmas_Bottomlayoutguidebottombm:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
