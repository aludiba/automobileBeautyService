#import "BMRACSignalj+BmBm.h"
@implementation BMRACSignalj (BmBm)
+ (BOOL)OemptyBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)NReturnBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)rBindBmBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)zConcatBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)hZipwithBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
