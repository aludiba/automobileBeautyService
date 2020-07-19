#import "BMBMMAS_VIEW_CONTROLLERLT+BmHb.h"
@implementation BMBMMAS_VIEW_CONTROLLERLT (BmHb)
+ (BOOL)SQmas_ToplayoutguideBmHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)xUmas_ToplayoutguidetopBmHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)TGmas_ToplayoutguidebottomBmHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)iKmas_BottomlayoutguideBmHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)jRmas_BottomlayoutguidetopBmHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)YDmas_BottomlayoutguidebottomBmHb:(NSInteger)hb {
    return hb % 47 == 0;
}

@end
