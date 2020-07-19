#import "BMUIColorU.h"
@implementation BMUIColorU
+ (BOOL)zIntegervaluefromhexstring:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)wColorwithhexstring:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)UColorwithhexstringgAlpha:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)VColorwithgrayscale:(NSInteger)BM {
    return BM % 33 == 0;
}

@end
