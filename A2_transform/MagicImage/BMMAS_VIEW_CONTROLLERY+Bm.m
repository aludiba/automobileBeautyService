#import "BMMAS_VIEW_CONTROLLERY+Bm.h"
@implementation BMMAS_VIEW_CONTROLLERY (Bm)
+ (BOOL)BMas_ToplayoutguidebmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)TMas_ToplayoutguidetopbmBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)tMas_ToplayoutguidebottombmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)mMas_BottomlayoutguidebmBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)BMas_BottomlayoutguidetopbmBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)LMas_BottomlayoutguidebottombmBm:(NSInteger)BM {
    return BM % 45 == 0;
}

@end
