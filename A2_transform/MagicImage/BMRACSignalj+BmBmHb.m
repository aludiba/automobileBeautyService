#import "BMRACSignalj+BmBmHb.h"
@implementation BMRACSignalj (BmBmHb)
+ (BOOL)OemptyBmBmHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)NReturnBmBmHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)rBindBmBmHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)zConcatBmBmHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)hZipwithBmBmHb:(NSInteger)hb {
    return hb % 20 == 0;
}

@end
