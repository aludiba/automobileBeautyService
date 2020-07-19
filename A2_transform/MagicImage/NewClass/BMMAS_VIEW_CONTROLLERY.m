#import "BMMAS_VIEW_CONTROLLERY.h"
@implementation BMMAS_VIEW_CONTROLLERY
+ (BOOL)BMas_Toplayoutguidebm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)TMas_Toplayoutguidetopbm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)tMas_Toplayoutguidebottombm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)mMas_Bottomlayoutguidebm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)BMas_Bottomlayoutguidetopbm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)LMas_Bottomlayoutguidebottombm:(NSInteger)BM {
    return BM % 10 == 0;
}

@end
