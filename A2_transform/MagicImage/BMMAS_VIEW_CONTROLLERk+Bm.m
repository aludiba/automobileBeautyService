#import "BMMAS_VIEW_CONTROLLERk+Bm.h"
@implementation BMMAS_VIEW_CONTROLLERk (Bm)
+ (BOOL)uMas_ToplayoutguidebmbmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)zMas_ToplayoutguidetopbmbmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)rMas_ToplayoutguidebottombmbmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)MMas_BottomlayoutguidebmbmBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)cMas_BottomlayoutguidetopbmbmBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)iMas_BottomlayoutguidebottombmbmBm:(NSInteger)BM {
    return BM % 1 == 0;
}

@end
