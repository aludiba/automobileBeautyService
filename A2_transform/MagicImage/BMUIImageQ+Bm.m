#import "BMUIImageQ+Bm.h"
@implementation BMUIImageQ (Bm)
+ (BOOL)CARGBDataBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)TIspointtransparentBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)WhasAlphaBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)TimageWithAlphaBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)QTransparentborderimageBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)aNewbordermaskNSizeBm:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
