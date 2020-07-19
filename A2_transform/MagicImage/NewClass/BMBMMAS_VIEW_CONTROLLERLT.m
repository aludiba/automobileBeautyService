#import "BMBMMAS_VIEW_CONTROLLERLT.h"
@implementation BMBMMAS_VIEW_CONTROLLERLT
+ (BOOL)SQmas_Toplayoutguide:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)xUmas_Toplayoutguidetop:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)TGmas_Toplayoutguidebottom:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)iKmas_Bottomlayoutguide:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)jRmas_Bottomlayoutguidetop:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)YDmas_Bottomlayoutguidebottom:(NSInteger)BM {
    return BM % 33 == 0;
}

@end
