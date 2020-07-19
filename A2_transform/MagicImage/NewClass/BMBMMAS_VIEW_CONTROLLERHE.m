#import "BMBMMAS_VIEW_CONTROLLERHE.h"
@implementation BMBMMAS_VIEW_CONTROLLERHE
+ (BOOL)bFmas_Toplayoutguide:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)tPmas_Toplayoutguidetop:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)XUmas_Toplayoutguidebottom:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)UFmas_Bottomlayoutguide:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)jYmas_Bottomlayoutguidetop:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)HNmas_Bottomlayoutguidebottom:(NSInteger)BM {
    return BM % 11 == 0;
}

@end
