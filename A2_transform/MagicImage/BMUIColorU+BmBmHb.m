#import "BMUIColorU+BmBmHb.h"
@implementation BMUIColorU (BmBmHb)
+ (BOOL)zIntegervaluefromhexstringBmBmHb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)wColorwithhexstringBmBmHb:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)UColorwithhexstringgAlphaBmBmHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)VColorwithgrayscaleBmBmHb:(NSInteger)hb {
    return hb % 30 == 0;
}

@end
