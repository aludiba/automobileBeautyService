#import "BMBMMAS_VIEW_CONTROLLERLN.h"
@implementation BMBMMAS_VIEW_CONTROLLERLN
+ (BOOL)LQmas_Toplayoutguide:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)kUmas_Toplayoutguidetop:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)oGmas_Toplayoutguidebottom:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)YKmas_Bottomlayoutguide:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)wRmas_Bottomlayoutguidetop:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)mDmas_Bottomlayoutguidebottom:(NSInteger)BM {
    return BM % 39 == 0;
}

@end
