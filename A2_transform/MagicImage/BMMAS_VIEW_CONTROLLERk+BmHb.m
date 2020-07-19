#import "BMMAS_VIEW_CONTROLLERk+BmHb.h"
@implementation BMMAS_VIEW_CONTROLLERk (BmHb)
+ (BOOL)uMas_ToplayoutguidebmbmBmHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)zMas_ToplayoutguidetopbmbmBmHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)rMas_ToplayoutguidebottombmbmBmHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)MMas_BottomlayoutguidebmbmBmHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)cMas_BottomlayoutguidetopbmbmBmHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)iMas_BottomlayoutguidebottombmbmBmHb:(NSInteger)hb {
    return hb % 49 == 0;
}

@end
