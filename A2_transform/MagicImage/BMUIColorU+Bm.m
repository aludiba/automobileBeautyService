#import "BMUIColorU+Bm.h"
@implementation BMUIColorU (Bm)
+ (BOOL)zIntegervaluefromhexstringBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)wColorwithhexstringBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)UColorwithhexstringgAlphaBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)VColorwithgrayscaleBm:(NSInteger)BM {
    return BM % 34 == 0;
}

@end
