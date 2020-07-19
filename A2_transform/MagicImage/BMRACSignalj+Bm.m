#import "BMRACSignalj+Bm.h"
@implementation BMRACSignalj (Bm)
+ (BOOL)OemptyBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)NReturnBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)rBindBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)zConcatBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)hZipwithBm:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
