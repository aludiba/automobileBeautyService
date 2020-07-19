#import "BMBMMAS_VIEW_CONTROLLERLT+Bm.h"
@implementation BMBMMAS_VIEW_CONTROLLERLT (Bm)
+ (BOOL)SQmas_ToplayoutguideBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)xUmas_ToplayoutguidetopBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)TGmas_ToplayoutguidebottomBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)iKmas_BottomlayoutguideBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)jRmas_BottomlayoutguidetopBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)YDmas_BottomlayoutguidebottomBm:(NSInteger)BM {
    return BM % 30 == 0;
}

@end
